#!/usr/bin/env bash
APP_CMD="equibop"
CLASS_RE="equibop"
WS_NAME="discord"

WIN_ID=$(niri msg -j windows | jq -r --arg re "$CLASS_RE" '
    .[] | select(.app_id | test($re; "i")) | .id
' | head -n1)

# Get the currently focused monitor
CURRENT_MONITOR=$(niri msg -j focused-output | jq -r '.name')

# Get the workspace the app is on
APP_WS=$(niri msg -j workspaces | jq -r --arg name "$WS_NAME" '
    .[] | select(.name == $name) | .output
' | head -n1)

FOCUSED_WS=$(niri msg -j workspaces | jq -r '.[] | select(.is_focused == true) | .name // empty')

if [[ -z "$WIN_ID" ]]; then
    # Move the named workspace to current monitor first, then focus it
    niri msg action move-workspace-to-monitor --reference "$WS_NAME" "$CURRENT_MONITOR" 2>/dev/null || true
    niri msg action focus-workspace "$WS_NAME"
    $APP_CMD &
elif [[ "$FOCUSED_WS" == "$WS_NAME" ]]; then
    niri msg action focus-workspace-previous
else
    # Move workspace to current monitor then focus
    niri msg action move-workspace-to-monitor --reference "$WS_NAME" "$CURRENT_MONITOR" 2>/dev/null || true
    niri msg action focus-workspace "$WS_NAME"
fi