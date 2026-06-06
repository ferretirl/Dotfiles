vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.g.colors_name = "noctalia"
vim.o.background = "dark"

local c = {
  -- Monochrome base
  bg = "#080808",
  bg_variant = "#111111",
  bg_hover = "#1a1a1a",
  overlay = "#2a1a20",
  outline = "#555555",
  dim = "#555555",
  muted = "#808080",
  fg = "#d0d0d0",
  fg_bright = "#f0f0f0",
  fg_dim = "#a0a0a0",

  -- Rose Pine syntax
  love = "#f07090",
  gold = "#f6c177",
  rose = "#f0aaaa",
  pine = "#4a9aaa",
  foam = "#c8d8e8",
  iris = "#d4b8f0",
  leaf = "#95b1ac",
  subtle = "#908caa",
  rp_muted = "#6e6a86",
  text = "#e0def4",

  -- Accent pinks from noctalia palette
  pink_hi = "#ff4d8a", -- hover/active
  pink_soft = "#fadadd", -- pastel primary
  pink_mid = "#f4b8c4", -- secondary pink
  rose_sel = "#7c033a", -- dark rose for selection bg

  -- Diagnostics
  red = "#f07090",
  yellow = "#f6c177",
  green = "#9ccfd8",
  sapphire = "#4a9aaa",
  teal = "#9ccfd8",
}

-- UI (monochrome base, pink-accented highlights)
vim.api.nvim_set_hl(0, "Normal", { fg = c.fg, bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = c.fg, bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = c.pink_mid, bg = "none" })
vim.api.nvim_set_hl(0, "FloatTitle", { fg = c.pink_soft, bg = "none", bold = true })
vim.api.nvim_set_hl(0, "NormalNC", { fg = c.fg_dim, bg = "none" })
vim.api.nvim_set_hl(0, "Cursor", { fg = c.bg, bg = c.pink_hi })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#0f0f0f" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = c.pink_mid, bold = true })
vim.api.nvim_set_hl(0, "LineNr", { fg = c.dim })
vim.api.nvim_set_hl(0, "SignColumn", { fg = c.dim, bg = "none" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#1a0e12" })
vim.api.nvim_set_hl(0, "VertSplit", { fg = c.outline })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#3a2030" })
vim.api.nvim_set_hl(0, "StatusLine", { fg = c.fg, bg = "#140a0e" })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = c.muted, bg = "#0e080a" })
vim.api.nvim_set_hl(0, "TabLine", { fg = c.muted, bg = "#0e080a" })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none" })
vim.api.nvim_set_hl(0, "TabLineSel", { fg = c.pink_soft, bg = "none", bold = true })
vim.api.nvim_set_hl(0, "Pmenu", { fg = c.fg, bg = "#130a0e" })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = c.bg, bg = c.pink_mid })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "#1a0e14" })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = c.pink_mid })
vim.api.nvim_set_hl(0, "Search", { fg = c.bg, bg = c.gold })
vim.api.nvim_set_hl(0, "IncSearch", { fg = c.bg, bg = c.pink_hi })
vim.api.nvim_set_hl(0, "CurSearch", { fg = c.bg, bg = c.pink_hi })
vim.api.nvim_set_hl(0, "Visual", { bg = c.rose_sel, blend = 0 })
vim.api.nvim_set_hl(0, "VisualNOS", { bg = c.rose_sel })
vim.api.nvim_set_hl(0, "MatchParen", { fg = c.pink_hi, bold = true, underline = true })
vim.api.nvim_set_hl(0, "Folded", { fg = c.muted, bg = "#150a0e" })
vim.api.nvim_set_hl(0, "FoldColumn", { fg = c.dim, bg = "none" })
vim.api.nvim_set_hl(0, "NonText", { fg = c.dim })
vim.api.nvim_set_hl(0, "SpecialKey", { fg = c.dim })
vim.api.nvim_set_hl(0, "Whitespace", { fg = "#2a1a20" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#1a0e14" })
vim.api.nvim_set_hl(0, "WildMenu", { fg = c.bg, bg = c.iris })
vim.api.nvim_set_hl(0, "Title", { fg = c.pink_soft, bold = true })
vim.api.nvim_set_hl(0, "Directory", { fg = c.foam, bold = true })
vim.api.nvim_set_hl(0, "Question", { fg = c.gold })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = c.iris })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = c.fg_dim })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = c.love, bold = true })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = c.gold, bold = true })

-- Syntax (Rose Pine copy kinda)
vim.api.nvim_set_hl(0, "Comment", { fg = c.rp_muted, italic = true })
vim.api.nvim_set_hl(0, "Constant", { fg = c.gold })
vim.api.nvim_set_hl(0, "String", { fg = c.gold })
vim.api.nvim_set_hl(0, "Character", { fg = c.gold })
vim.api.nvim_set_hl(0, "Number", { fg = c.gold })
vim.api.nvim_set_hl(0, "Boolean", { fg = c.rose })
vim.api.nvim_set_hl(0, "Float", { fg = c.gold })
vim.api.nvim_set_hl(0, "Identifier", { fg = c.text })
vim.api.nvim_set_hl(0, "Function", { fg = c.rose })
vim.api.nvim_set_hl(0, "Statement", { fg = c.pine, bold = true })
vim.api.nvim_set_hl(0, "Conditional", { fg = c.pine })
vim.api.nvim_set_hl(0, "Repeat", { fg = c.pine })
vim.api.nvim_set_hl(0, "Label", { fg = c.foam })
vim.api.nvim_set_hl(0, "Operator", { fg = c.subtle })
vim.api.nvim_set_hl(0, "Keyword", { fg = c.pine })
vim.api.nvim_set_hl(0, "Exception", { fg = c.pine })
vim.api.nvim_set_hl(0, "PreProc", { fg = c.iris })
vim.api.nvim_set_hl(0, "Include", { fg = c.pine })
vim.api.nvim_set_hl(0, "Define", { fg = c.iris })
vim.api.nvim_set_hl(0, "Macro", { fg = c.iris })
vim.api.nvim_set_hl(0, "PreCondit", { fg = c.iris })
vim.api.nvim_set_hl(0, "Type", { fg = c.foam })
vim.api.nvim_set_hl(0, "StorageClass", { fg = c.foam })
vim.api.nvim_set_hl(0, "Structure", { fg = c.foam })
vim.api.nvim_set_hl(0, "Typedef", { fg = c.foam })
vim.api.nvim_set_hl(0, "Special", { fg = c.foam })
vim.api.nvim_set_hl(0, "SpecialChar", { fg = c.foam })
vim.api.nvim_set_hl(0, "Tag", { fg = c.foam })
vim.api.nvim_set_hl(0, "Delimiter", { fg = c.subtle })
vim.api.nvim_set_hl(0, "SpecialComment", { fg = c.iris })
vim.api.nvim_set_hl(0, "Debug", { fg = c.rose })
vim.api.nvim_set_hl(0, "Underlined", { fg = c.iris, underline = true })
vim.api.nvim_set_hl(0, "Ignore", { fg = c.dim })
vim.api.nvim_set_hl(0, "Error", { fg = c.love })
vim.api.nvim_set_hl(0, "Todo", { fg = c.pink_hi, bold = true })

-- Diagnostics
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = c.love })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = c.gold })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = c.foam })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = c.iris })
vim.api.nvim_set_hl(0, "DiagnosticOk", { fg = c.pine })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { underline = true, sp = c.love })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { underline = true, sp = c.gold })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { underline = true, sp = c.foam })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { underline = true, sp = c.iris })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = c.love })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = c.gold })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = c.foam })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = c.iris })

-- Treesitter
vim.api.nvim_set_hl(0, "@variable", { fg = c.text, italic = true })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = c.love, italic = true, bold = true })
vim.api.nvim_set_hl(0, "@variable.parameter", { fg = c.iris, italic = true })
vim.api.nvim_set_hl(0, "@variable.member", { fg = c.foam })
vim.api.nvim_set_hl(0, "@constant", { fg = c.gold })
vim.api.nvim_set_hl(0, "@constant.builtin", { fg = c.gold, bold = true })
vim.api.nvim_set_hl(0, "@constant.macro", { fg = c.gold })
vim.api.nvim_set_hl(0, "@string", { fg = c.gold })
vim.api.nvim_set_hl(0, "@string.regexp", { fg = c.iris })
vim.api.nvim_set_hl(0, "@string.escape", { fg = c.pine })
vim.api.nvim_set_hl(0, "@string.special", { fg = c.gold })
vim.api.nvim_set_hl(0, "@string.special.url", { fg = c.iris, underline = true })
vim.api.nvim_set_hl(0, "@character", { fg = c.gold })
vim.api.nvim_set_hl(0, "@number", { fg = c.gold })
vim.api.nvim_set_hl(0, "@boolean", { fg = c.rose })
vim.api.nvim_set_hl(0, "@float", { fg = c.gold })
vim.api.nvim_set_hl(0, "@function", { fg = c.rose })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = c.rose, bold = true })
vim.api.nvim_set_hl(0, "@function.macro", { fg = c.rose })
vim.api.nvim_set_hl(0, "@function.call", { fg = c.rose })
vim.api.nvim_set_hl(0, "@function.method", { fg = c.rose })
vim.api.nvim_set_hl(0, "@function.method.call", { fg = c.iris })
vim.api.nvim_set_hl(0, "@constructor", { fg = c.foam })
vim.api.nvim_set_hl(0, "@operator", { fg = c.subtle })
vim.api.nvim_set_hl(0, "@keyword", { fg = c.pine })
vim.api.nvim_set_hl(0, "@keyword.function", { fg = c.pine })
vim.api.nvim_set_hl(0, "@keyword.operator", { fg = c.subtle })
vim.api.nvim_set_hl(0, "@keyword.return", { fg = c.pine })
vim.api.nvim_set_hl(0, "@keyword.import", { fg = c.pine })
vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = c.pine })
vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = c.pine })
vim.api.nvim_set_hl(0, "@keyword.exception", { fg = c.pine })
vim.api.nvim_set_hl(0, "@keyword.storage", { fg = c.foam })
vim.api.nvim_set_hl(0, "@keyword.debug", { fg = c.rose })
vim.api.nvim_set_hl(0, "@type", { fg = c.foam })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = c.foam, bold = true })
vim.api.nvim_set_hl(0, "@type.definition", { fg = c.foam })
vim.api.nvim_set_hl(0, "@attribute", { fg = c.iris })
vim.api.nvim_set_hl(0, "@attribute.builtin", { fg = c.iris, bold = true })
vim.api.nvim_set_hl(0, "@property", { fg = c.foam, italic = true })
vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = c.subtle })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = c.subtle })
vim.api.nvim_set_hl(0, "@punctuation.special", { fg = c.subtle })
vim.api.nvim_set_hl(0, "@comment", { fg = c.rp_muted, italic = true })
vim.api.nvim_set_hl(0, "@comment.todo", { fg = c.pink_hi, bold = true })
vim.api.nvim_set_hl(0, "@comment.error", { fg = c.love, bold = true })
vim.api.nvim_set_hl(0, "@comment.warning", { fg = c.gold, bold = true })
vim.api.nvim_set_hl(0, "@comment.note", { fg = c.foam, bold = true })
vim.api.nvim_set_hl(0, "@tag", { fg = c.foam })
vim.api.nvim_set_hl(0, "@tag.attribute", { fg = c.iris })
vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = c.subtle })
vim.api.nvim_set_hl(0, "@markup.heading", { fg = c.pink_soft, bold = true })
vim.api.nvim_set_hl(0, "@markup.link", { fg = c.iris, underline = true })
vim.api.nvim_set_hl(0, "@markup.link.url", { fg = c.iris, underline = true })
vim.api.nvim_set_hl(0, "@markup.raw", { fg = c.gold })
vim.api.nvim_set_hl(0, "@markup.strong", { bold = true })
vim.api.nvim_set_hl(0, "@markup.italic", { italic = true })
vim.api.nvim_set_hl(0, "@markup.list", { fg = c.pine })

-- LSP
vim.api.nvim_set_hl(0, "LspReferenceText", { bg = "#2a1020" })
vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = "#2a1020" })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = "#2a1020", underline = true })
vim.api.nvim_set_hl(0, "LspInlayHint", { fg = c.rp_muted, italic = true })
vim.api.nvim_set_hl(0, "@lsp.type.comment", {})
vim.api.nvim_set_hl(0, "@lsp.type.keyword", { link = "@keyword" })
vim.api.nvim_set_hl(0, "@lsp.type.parameter", { link = "@variable.parameter" })
vim.api.nvim_set_hl(0, "@lsp.type.property", { link = "@property" })
vim.api.nvim_set_hl(0, "@lsp.type.variable", {})
vim.api.nvim_set_hl(0, "@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.constant", { link = "@constant" })
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })

-- Git
vim.api.nvim_set_hl(0, "DiffAdd", { fg = c.pine, bg = "#0a1a14" })
vim.api.nvim_set_hl(0, "DiffChange", { fg = c.gold, bg = "#1a140a" })
vim.api.nvim_set_hl(0, "DiffDelete", { fg = c.love, bg = "#1a0a10" })
vim.api.nvim_set_hl(0, "DiffText", { fg = c.gold, bg = "#2a200a" })
vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = c.pine })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = c.gold })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = c.love })
vim.api.nvim_set_hl(0, "Added", { fg = c.pine })
vim.api.nvim_set_hl(0, "Changed", { fg = c.gold })
vim.api.nvim_set_hl(0, "Removed", { fg = c.love })

-- Terminal colors
vim.g.terminal_color_0 = c.bg_variant
vim.g.terminal_color_8 = c.subtle
vim.g.terminal_color_1 = c.love
vim.g.terminal_color_9 = c.love
vim.g.terminal_color_2 = c.pine
vim.g.terminal_color_10 = c.pine
vim.g.terminal_color_3 = c.gold
vim.g.terminal_color_11 = c.gold
vim.g.terminal_color_4 = c.foam
vim.g.terminal_color_12 = c.foam
vim.g.terminal_color_5 = c.iris
vim.g.terminal_color_13 = c.iris
vim.g.terminal_color_6 = c.rose
vim.g.terminal_color_14 = c.rose
vim.g.terminal_color_7 = c.text
vim.g.terminal_color_15 = c.text
