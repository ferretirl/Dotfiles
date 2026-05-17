function copydots
    echo "Copying dots"

    echo "  → niri"
    cp -r ~/.config/niri ~/Dotfiles/.config/

    echo "  → ghostty"
    cp -r ~/.config/ghostty ~/Dotfiles/.config/

    echo "  → fish"
    cp -r ~/.config/fish ~/Dotfiles/.config/

    echo "  → noctalia"
    cp -r ~/.config/noctalia ~/Dotfiles/.config/

    echo "  → pipewire"
    cp -r ~/.config/pipewire ~/Dotfiles/.config/

    echo "  → btop"
    cp -r ~/.config/btop ~/Dotfiles/.config/

    echo "  → fastfetch"
    cp -r ~/.config/fastfetch ~/Dotfiles/.config/

    echo "  → nvim"
    cp -r ~/.config/nvim ~/Dotfiles/.config/

    echo "  → Thunar custom actions"
    cp ~/.config/Thunar/uca.xml ~/Dotfiles/.config/Thunar/

    echo "  → mimeapps.list"
    cp ~/.config/mimeapps.list ~/Dotfiles/.config/

    echo "Done!"
end
