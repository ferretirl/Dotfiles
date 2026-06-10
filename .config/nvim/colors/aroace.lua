vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.g.colors_name = "aroace"
vim.o.background = "dark"

local c = {
  -- Monochrome base (unchanged)
  bg = "#080808",
  bg_variant = "#111111",
  bg_hover = "#1a1a1a",
  overlay = "#0a1218", -- blue-tinted overlay
  outline = "#555555",
  dim = "#555555",
  muted = "#808080",
  fg = "#d0d0d0",
  fg_bright = "#f0f0f0",
  fg_dim = "#a0a0a0",

  -- Syntax (kept from Rose Pine — works fine with any palette)
  love = "#f07090",
  gold = "#F2B870", -- orange replaces gold
  rose = "#F5CE8A", -- yellow-orange replaces rose
  pine = "#6A9AB8", -- blue replaces pine
  foam = "#8BBFD6", -- light blue replaces foam
  iris = "#A8D4E6", -- pale blue replaces iris
  leaf = "#8BBFD6",
  subtle = "#7A9AAA",
  rp_muted = "#5a7a8a",
  text = "#FAF0E4", -- cream

  -- Aroace accent palette
  orange_hi = "#F2B870", -- primary orange
  orange_soft = "#F5CE8A", -- soft yellow-orange
  orange_mid = "#E8A458", -- mid orange
  blue_sel = "#0a1a28", -- dark blue for selection bg
  wine = "#C05830",
}

local h = vim.api.nvim_set_hl

-- UI
h(0, "Normal", { fg = c.fg, bg = "none" })
h(0, "NormalFloat", { fg = c.fg, bg = "none" })
h(0, "FloatBorder", { fg = c.foam, bg = "none" })
h(0, "FloatTitle", { fg = c.orange_soft, bg = "none", bold = true })
h(0, "NormalNC", { fg = c.fg_dim, bg = "none" })
h(0, "Cursor", { fg = c.bg, bg = c.orange_hi })
h(0, "CursorLine", { bg = "#0d0e10" })
h(0, "CursorLineNr", { fg = c.foam, bold = true })
h(0, "LineNr", { fg = c.dim })
h(0, "SignColumn", { fg = c.dim, bg = "none" })
h(0, "ColorColumn", { bg = "#0a1218" })
h(0, "VertSplit", { fg = c.outline })
h(0, "WinSeparator", { fg = "#0a1a28" })
h(0, "StatusLine", { fg = c.fg, bg = "#0a0e12" })
h(0, "StatusLineNC", { fg = c.muted, bg = "#080a0c" })
h(0, "TabLine", { fg = c.muted, bg = "#080a0c" })
h(0, "TabLineFill", { bg = "none" })
h(0, "TabLineSel", { fg = c.orange_soft, bg = "none", bold = true })
h(0, "Pmenu", { fg = c.fg, bg = "#0a0e12" })
h(0, "PmenuSel", { fg = c.bg, bg = c.foam })
h(0, "PmenuSbar", { bg = "#0a1218" })
h(0, "PmenuThumb", { bg = c.foam })
h(0, "Search", { fg = c.bg, bg = c.orange_soft })
h(0, "IncSearch", { fg = c.bg, bg = c.orange_hi })
h(0, "CurSearch", { fg = c.bg, bg = c.orange_hi })
h(0, "Visual", { bg = c.blue_sel, blend = 0 })
h(0, "VisualNOS", { bg = c.blue_sel })
h(0, "MatchParen", { fg = c.orange_hi, bold = true, underline = true })
h(0, "Folded", { fg = c.muted, bg = "#0a1018" })
h(0, "FoldColumn", { fg = c.dim, bg = "none" })
h(0, "NonText", { fg = c.dim })
h(0, "SpecialKey", { fg = c.dim })
h(0, "Whitespace", { fg = "#101820" })
h(0, "EndOfBuffer", { fg = "#0a1218" })
h(0, "WildMenu", { fg = c.bg, bg = c.iris })
h(0, "Title", { fg = c.orange_soft, bold = true })
h(0, "Directory", { fg = c.foam, bold = true })
h(0, "Question", { fg = c.orange_hi })
h(0, "MoreMsg", { fg = c.iris })
h(0, "ModeMsg", { fg = c.fg_dim })
h(0, "ErrorMsg", { fg = c.wine, bold = true })
h(0, "WarningMsg", { fg = c.orange_hi, bold = true })

-- Syntax
h(0, "Comment", { fg = c.rp_muted, italic = true })
h(0, "Constant", { fg = c.gold })
h(0, "String", { fg = c.gold })
h(0, "Character", { fg = c.gold })
h(0, "Number", { fg = c.gold })
h(0, "Boolean", { fg = c.rose })
h(0, "Float", { fg = c.gold })
h(0, "Identifier", { fg = c.text })
h(0, "Function", { fg = c.rose })
h(0, "Statement", { fg = c.pine, bold = true })
h(0, "Conditional", { fg = c.pine })
h(0, "Repeat", { fg = c.pine })
h(0, "Label", { fg = c.foam })
h(0, "Operator", { fg = c.subtle })
h(0, "Keyword", { fg = c.pine })
h(0, "Exception", { fg = c.pine })
h(0, "PreProc", { fg = c.iris })
h(0, "Include", { fg = c.pine })
h(0, "Define", { fg = c.iris })
h(0, "Macro", { fg = c.iris })
h(0, "PreCondit", { fg = c.iris })
h(0, "Type", { fg = c.foam })
h(0, "StorageClass", { fg = c.foam })
h(0, "Structure", { fg = c.foam })
h(0, "Typedef", { fg = c.foam })
h(0, "Special", { fg = c.foam })
h(0, "SpecialChar", { fg = c.foam })
h(0, "Tag", { fg = c.foam })
h(0, "Delimiter", { fg = c.subtle })
h(0, "SpecialComment", { fg = c.iris })
h(0, "Debug", { fg = c.rose })
h(0, "Underlined", { fg = c.iris, underline = true })
h(0, "Ignore", { fg = c.dim })
h(0, "Error", { fg = c.wine })
h(0, "Todo", { fg = c.orange_hi, bold = true })

-- Diagnostics
h(0, "DiagnosticError", { fg = c.wine })
h(0, "DiagnosticWarn", { fg = c.orange_hi })
h(0, "DiagnosticInfo", { fg = c.foam })
h(0, "DiagnosticHint", { fg = c.iris })
h(0, "DiagnosticOk", { fg = c.pine })
h(0, "DiagnosticUnderlineError", { underline = true, sp = c.wine })
h(0, "DiagnosticUnderlineWarn", { underline = true, sp = c.orange_hi })
h(0, "DiagnosticUnderlineInfo", { underline = true, sp = c.foam })
h(0, "DiagnosticUnderlineHint", { underline = true, sp = c.iris })
h(0, "DiagnosticVirtualTextError", { fg = c.wine })
h(0, "DiagnosticVirtualTextWarn", { fg = c.orange_hi })
h(0, "DiagnosticVirtualTextInfo", { fg = c.foam })
h(0, "DiagnosticVirtualTextHint", { fg = c.iris })

-- Treesitter
h(0, "@variable", { fg = c.text, italic = true })
h(0, "@variable.builtin", { fg = c.wine, italic = true, bold = true })
h(0, "@variable.parameter", { fg = c.iris, italic = true })
h(0, "@variable.member", { fg = c.foam })
h(0, "@constant", { fg = c.gold })
h(0, "@constant.builtin", { fg = c.gold, bold = true })
h(0, "@constant.macro", { fg = c.gold })
h(0, "@string", { fg = c.gold })
h(0, "@string.regexp", { fg = c.iris })
h(0, "@string.escape", { fg = c.pine })
h(0, "@string.special", { fg = c.gold })
h(0, "@string.special.url", { fg = c.iris, underline = true })
h(0, "@character", { fg = c.gold })
h(0, "@number", { fg = c.gold })
h(0, "@boolean", { fg = c.rose })
h(0, "@float", { fg = c.gold })
h(0, "@function", { fg = c.rose })
h(0, "@function.builtin", { fg = c.rose, bold = true })
h(0, "@function.macro", { fg = c.rose })
h(0, "@function.call", { fg = c.rose })
h(0, "@function.method", { fg = c.rose })
h(0, "@function.method.call", { fg = c.iris })
h(0, "@constructor", { fg = c.foam })
h(0, "@operator", { fg = c.subtle })
h(0, "@keyword", { fg = c.pine })
h(0, "@keyword.function", { fg = c.pine })
h(0, "@keyword.operator", { fg = c.subtle })
h(0, "@keyword.return", { fg = c.pine })
h(0, "@keyword.import", { fg = c.pine })
h(0, "@keyword.conditional", { fg = c.pine })
h(0, "@keyword.repeat", { fg = c.pine })
h(0, "@keyword.exception", { fg = c.pine })
h(0, "@keyword.storage", { fg = c.foam })
h(0, "@keyword.debug", { fg = c.rose })
h(0, "@type", { fg = c.foam })
h(0, "@type.builtin", { fg = c.foam, bold = true })
h(0, "@type.definition", { fg = c.foam })
h(0, "@attribute", { fg = c.iris })
h(0, "@attribute.builtin", { fg = c.iris, bold = true })
h(0, "@property", { fg = c.foam, italic = true })
h(0, "@punctuation.bracket", { fg = c.subtle })
h(0, "@punctuation.delimiter", { fg = c.subtle })
h(0, "@punctuation.special", { fg = c.subtle })
h(0, "@comment", { fg = c.rp_muted, italic = true })
h(0, "@comment.todo", { fg = c.orange_hi, bold = true })
h(0, "@comment.error", { fg = c.wine, bold = true })
h(0, "@comment.warning", { fg = c.orange_hi, bold = true })
h(0, "@comment.note", { fg = c.foam, bold = true })
h(0, "@tag", { fg = c.foam })
h(0, "@tag.attribute", { fg = c.iris })
h(0, "@tag.delimiter", { fg = c.subtle })
h(0, "@markup.heading", { fg = c.orange_soft, bold = true })
h(0, "@markup.link", { fg = c.iris, underline = true })
h(0, "@markup.link.url", { fg = c.iris, underline = true })
h(0, "@markup.raw", { fg = c.gold })
h(0, "@markup.strong", { bold = true })
h(0, "@markup.italic", { italic = true })
h(0, "@markup.list", { fg = c.pine })

-- LSP
h(0, "LspReferenceText", { bg = "#0a1a28" })
h(0, "LspReferenceRead", { bg = "#0a1a28" })
h(0, "LspReferenceWrite", { bg = "#0a1a28", underline = true })
h(0, "LspInlayHint", { fg = c.rp_muted, italic = true })
h(0, "@lsp.type.comment", {})
h(0, "@lsp.type.keyword", { link = "@keyword" })
h(0, "@lsp.type.parameter", { link = "@variable.parameter" })
h(0, "@lsp.type.property", { link = "@property" })
h(0, "@lsp.type.variable", {})
h(0, "@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
h(0, "@lsp.typemod.variable.constant", { link = "@constant" })
h(0, "@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })

-- Git
h(0, "DiffAdd", { fg = c.pine, bg = "#0a1218" })
h(0, "DiffChange", { fg = c.gold, bg = "#1a1208" })
h(0, "DiffDelete", { fg = c.wine, bg = "#1a0810" })
h(0, "DiffText", { fg = c.gold, bg = "#1a1800" })
h(0, "GitSignsAdd", { fg = c.pine })
h(0, "GitSignsChange", { fg = c.gold })
h(0, "GitSignsDelete", { fg = c.wine })
h(0, "Added", { fg = c.pine })
h(0, "Changed", { fg = c.gold })
h(0, "Removed", { fg = c.wine })

-- Terminal colors
vim.g.terminal_color_0 = c.bg_variant
vim.g.terminal_color_8 = c.subtle
vim.g.terminal_color_1 = c.wine
vim.g.terminal_color_9 = c.wine
vim.g.terminal_color_2 = c.pine
vim.g.terminal_color_10 = c.pine
vim.g.terminal_color_3 = c.gold
vim.g.terminal_color_11 = c.gold
vim.g.terminal_color_4 = c.orange_soft
vim.g.terminal_color_12 = c.iris
vim.g.terminal_color_5 = c.orange_hi
vim.g.terminal_color_13 = c.orange_hi
vim.g.terminal_color_6 = c.foam
vim.g.terminal_color_14 = c.foam
vim.g.terminal_color_7 = c.text
vim.g.terminal_color_15 = c.text
