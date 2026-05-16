#!/usr/bin/env bash
set -e
# --- CONFIGURATION ---
CONFIG_PATH="$HOME/.config/noctalia/mots/etc/colloid-noctalia.conf"
GEN_SCRIPT="/home/ferret/Documents/Colloid-icon-theme/install.sh"
REPO_ROOT="$HOME/.local/share/icons/Colloid-Noctalia"
ICON_THEME_NAME="Colloid-Noctalia"
REFRESH_SLEEP="0.01"
# ---------------------
# 1. LOAD THE CONFIG
if [[ -f "$CONFIG_PATH" ]]; then
    source "$CONFIG_PATH"
else
    echo "Error: Config not found at $CONFIG_PATH"
    exit 1
fi
# 2. VALIDATE & SANITIZE
: "${THEME_COLOR:?THEME_COLOR not found in config}"
: "${COLOR_SUFFIX:?COLOR_SUFFIX not found in config}"
VARIANT="${VARIANT:-"-Dark"}"
SAFE_COLOR=$(echo "$THEME_COLOR" | sed 's/#//g')
BRANCH="color/${SAFE_COLOR}${VARIANT}"
# 3. INITIALIZE REPO
if [[ ! -d "$REPO_ROOT/.git" ]]; then
    mkdir -p "$REPO_ROOT"
    git -C "$REPO_ROOT" init --quiet
    git -C "$REPO_ROOT" commit --allow-empty -m "Init" --quiet
fi
cd "$REPO_ROOT"
# 4. CACHE LOGIC
if git rev-parse --verify "$BRANCH" >/dev/null 2>&1; then
    # CACHE HIT
    echo ">> Cache Hit: Swapping to $THEME_COLOR $VARIANT"
    git checkout -f "$BRANCH" --quiet
else
    # CACHE MISS
    echo ">> Cache Miss: Generating $COLOR_SUFFIX $VARIANT"

    git checkout --orphan "$BRANCH" --quiet
    git read-tree --empty
    find . -maxdepth 1 ! -name '.git' ! -name '.' -exec rm -rf {} +
    TMP_BUILD=$(mktemp -d)

    # Run generator with custom hex passed as env var
    CUSTOM_HEX="$THEME_COLOR" bash "$GEN_SCRIPT" --dest "$TMP_BUILD" --name "Colloid-${COLOR_SUFFIX}" > /dev/null
    TARGET_SUBDIR="Colloid-${COLOR_SUFFIX}${VARIANT}"

    if [[ -d "$TMP_BUILD/$TARGET_SUBDIR" ]]; then
        cp -af "$TMP_BUILD/$TARGET_SUBDIR/." "$REPO_ROOT/"
        # Patch internal name to match our top-level variable
        echo ">> Patching index.theme to: $ICON_THEME_NAME"
        sed -i "s/^Name=.*/Name=${ICON_THEME_NAME}/" "$REPO_ROOT/index.theme"

        git add .
        git commit -m "Cache: $THEME_COLOR $VARIANT" --quiet
    else
        echo "Error: Generated folder $TARGET_SUBDIR not found in $TMP_BUILD"
        ls -F "$TMP_BUILD"
        rm -rf "$TMP_BUILD"
        exit 1
    fi
    rm -rf "$TMP_BUILD"
fi
# 5. SYSTEM REFRESH
echo ">> Refreshing GTK icon cache..."
gtk-update-icon-cache -f "$REPO_ROOT" > /dev/null 2>&1
# 6. GNOME HOT RELOAD
echo ">> Signaling GNOME to reload icons..."
CURRENT=$(gsettings get org.gnome.desktop.interface icon-theme | tr -d "'")
if [[ "$CURRENT" == "$ICON_THEME_NAME" ]]; then
    gsettings set org.gnome.desktop.interface icon-theme "Adwaita"
    sleep $REFRESH_SLEEP
    gsettings set org.gnome.desktop.interface icon-theme "$ICON_THEME_NAME"
else
    gsettings set org.gnome.desktop.interface icon-theme "$ICON_THEME_NAME"
fi
echo ">> Icons updated successfully to $THEME_COLOR ($VARIANT)."