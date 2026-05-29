-- return {
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     opts = {
--       auto_integrations = true,
--       color_overrides = {
--         mocha = {
--           blue = "#cba6f7",
--           sapphire = "#cba6f7",
--           lavender = "#b4befe",
--           mauve = "#f5c2e7",
--         },
--       },
--     },
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catppuccin-mocha",
--     },
--   },
-- }
return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    vim.cmd("colorscheme rose-pine")
  end,
}
