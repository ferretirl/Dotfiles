#!/usr/bin/env bash
APP_CMD="feishin"
CLASS_RE="feishin"
WS_NAME="feishin"

WIN_ID=$(niri msg -j windows | jq -r --arg re "$CLASS_RE" '
    .[] | select(.app_id | test($re; "i")) | .id
' | head -n1)

CURRENT_MONITOR=$(niri msg -j focused-output | jq -r '.name')

FOCUSED_WS=$(niri msg -j workspaces | jq -r '.[] | select(.is_focused == true) | .name // empty')

if [[ -z "$WIN_ID" ]]; then
    $APP_CMD &
    sleep 2
    WIN_ID=$(niri msg -j windows | jq -r --arg re "$CLASS_RE" '
        .[] | select(.app_id | test($re; "i")) | .id
    ' | head -n1)
    niri msg action move-window-to-workspace --window-id "$WIN_ID" "$WS_NAME"
    niri msg action move-workspace-to-monitor --reference "$WS_NAME" "$CURRENT_MONITOR" 2>/dev/null || true
    niri msg action focus-workspace "$WS_NAME"
elif [[ "$FOCUSED_WS" == "$WS_NAME" ]]; then
    niri msg action focus-workspace-previous
else
    niri msg action move-window-to-workspace --window-id "$WIN_ID" "$WS_NAME"
    niri msg action move-workspace-to-monitor --reference "$WS_NAME" "$CURRENT_MONITOR" 2>/dev/null || true
    niri msg action focus-workspace "$WS_NAME"
fi