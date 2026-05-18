# Commands to run in interactive sessions can go here
set -gx SUDO_EDITOR nvim
if status is-interactive
    # No greeting
    set fish_greeting
    fastfetch
    fish_add_path ~/.cargo/bin

    function afk-on
        systemd-inhibit --what=idle:sleep --who="Roblox AFK" --why="overnight farming" sleep infinity &
        bash ~/Documents/robloxclicker.sh &
    end

    function afk-off
        kill (pgrep -f "sleep infinity")
        kill (pgrep -f "robloxclicker.sh")
    end
    alias clear "printf '\033[2J\033[3J\033[1;1H'"
    if test "$TERM" != linux
        alias ls 'eza --icons -a'
    end
end
