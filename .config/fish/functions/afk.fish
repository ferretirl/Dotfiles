function afk-on
    systemd-inhibit --what=idle:sleep --who="Roblox AFK" --why="overnight farming" sleep infinity &
    bash ~/Documents/robloxclicker.sh &
end

function afk-off
    kill (pgrep -f "sleep infinity")
    kill (pgrep -f "robloxclicker.sh")
end
