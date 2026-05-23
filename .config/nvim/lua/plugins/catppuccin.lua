require("catppuccin").setup({
  flavour = "mocha",
  color_overrides = {
    mocha = {
      blue = "#b4befe", -- hacky ahh override
    },
  },
  auto_integrations = true,
})

vim.cmd("colorscheme catppuccin")
