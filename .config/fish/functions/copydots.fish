function copydots
    echo "Copying dots"

    echo "  → niri"
    rm -rf ~/Dotfiles/.config/niri
    cp -r ~/.config/niri ~/Dotfiles/.config/

    echo "  → ghostty"
    rm -rf ~/Dotfiles/.config/ghostty
    cp -r ~/.config/ghostty ~/Dotfiles/.config/

    echo "  → fish"
    rm -rf ~/Dotfiles/.config/fish
    cp -r ~/.config/fish ~/Dotfiles/.config/

    echo "  → noctalia"
    rm -rf ~/Dotfiles/.config/noctalia
    cp -r ~/.config/noctalia ~/Dotfiles/.config/

    echo "  → pipewire"
    rm -rf ~/Dotfiles/.config/pipewire
    cp -r ~/.config/pipewire ~/Dotfiles/.config/

    echo "  → btop"
    rm -rf ~/Dotfiles/.config/btop
    cp -r ~/.config/btop ~/Dotfiles/.config/

    echo "  → fastfetch"
    rm -rf ~/Dotfiles/.config/fastfetch
    cp -r ~/.config/fastfetch ~/Dotfiles/.config/

    echo "  → nvim"
    rm -rf ~/Dotfiles/.config/nvim
    cp -r ~/.config/nvim ~/Dotfiles/.config/

    echo "  → Thunar custom actions"
    cp ~/.config/Thunar/uca.xml ~/Dotfiles/.config/Thunar/

    echo "  → mimeapps.list"
    cp ~/.config/mimeapps.list ~/Dotfiles/.config/

    echo "Done!"
end
