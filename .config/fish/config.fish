set -gx SUDO_EDITOR nvim
set -gx EDITOR nvim
set -gx VISUAL nvim
alias vi nvim
alias ls 'eza --icons -a'
fish_add_path ~/.cargo/bin

if status is-interactive
    set fish_greeting
    fastfetch | gay --aroace -i 2d

    if test "$TERM" != linux
    end
end

starship init fish | source
