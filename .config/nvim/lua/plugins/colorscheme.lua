return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      auto_integrations = true,
      color_overrides = {
        mocha = {
          blue = "#f5c2e7",
          sapphire = "#f5c2e7",
          lavender = "#b4befe",
          mauve = "#cba6f7",
        },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
