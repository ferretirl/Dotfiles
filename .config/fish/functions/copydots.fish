function copydots
    echo "Copying dots"

    echo "  → hyprland"
    rm -rf ~/Dotfiles/.config/hypr
    cp -r ~/.config/hypr ~/Dotfiles/.config/

    echo "  → ghostty"
    rm -rf ~/Dotfiles/.config/ghostty
    cp -r ~/.config/ghostty ~/Dotfiles/.config/

    echo "  → kitty"
    rm -rf ~/Dotfiles/.config/kitty
    cp -r ~/.config/kitty ~/Dotfiles/.config/

    echo "  → fish"
    rm -rf ~/Dotfiles/.config/fish
    cp -r ~/.config/fish ~/Dotfiles/.config/

    echo "  → noctalia"
    rm -rf ~/Dotfiles/.local/state/noctalia/settings.toml
    cp -r ~/.local/state/noctalia/settings.toml ~/Dotfiles/.local/state/noctalia/
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
    rm -rf ~/Dotfiles/.config/Thunar/uca.xml
    cp -r ~/.config/Thunar/uca.xml ~/Dotfiles/.config/Thunar/

    echo "  → mimeapps.list"
    rm -rf ~/Dotfiles/.config/mimeapps.list
    cp ~/.config/mimeapps.list ~/Dotfiles/.config/

    echo "  → yazi"
    rm -rf ~/Dotfiles/.config/yazi/
    cp -r ~/.config/yazi/ ~/Dotfiles/.config/

    echo "  → starship"
    rm -rf ~/Dotfiles/.config/starship.toml
    cp ~/.config/starship.toml ~/Dotfiles/.config/

    echo "Done!"
end
