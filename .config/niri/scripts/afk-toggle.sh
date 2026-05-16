#!/usr/bin/env bash
if pgrep -f "sleep infinity" > /dev/null; then
    kill $(pgrep -f "sleep infinity")
    kill $(pgrep -f "robloxclicker.sh")
else
    systemd-inhibit --what=idle:sleep --who="Roblox AFK" --why="overnight farming" sleep infinity &
    bash ~/Documents/robloxclicker.sh &
fi
