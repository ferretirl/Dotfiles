fish_vi_key_bindings
set -gx SUDO_EDITOR nvim
set -gx EDITOR nvim
set -gx VISUAL nvim

if status is-interactive
    set fish_greeting
    fastfetch
    fish_add_path ~/.cargo/bin

    alias clear "printf '\033[2J\033[3J\033[1;1H'"
    if test "$TERM" != linux
        alias ls 'eza --icons -a'
    end
end

starship init fish | source
