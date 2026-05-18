#!/usr/bin/env bash
set -euo pipefail

WS="special:5"
CLASS_RE='equibop'

APP_CMD="equibop"

# If already on special:5, do nothing.
if hyprctl -j monitors | jq -er '.[] | select(.focused) | .activeWorkspace.name=="'"$WS"'"' >/dev/null; then
  exit 0
fi

# Check for existing equibop client.
read -r ADDR CURWS <<<"$(hyprctl -j clients |
  jq -r --arg re "$CLASS_RE" '
      .[] | select(.class|test($re; "i"))
                  | "\(.address) \(.workspace.name)"
                                  ' | head -n 1 || true)"

if [[ -z "${ADDR:-}" ]]; then
  # Not running: launch on special:5.
  hyprctl dispatch exec "[workspace $WS] $APP_CMD"
else
  # Running: move to special:5 if needed.
  if [[ "$CURWS" != "$WS" ]]; then
    hyprctl dispatch movetoworkspace "$WS,address:$ADDR"
  fi
fi

# Show special:5.
hyprctl dispatch togglespecialworkspace 5
