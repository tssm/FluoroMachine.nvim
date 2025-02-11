local fluoromachine = require("fluoromachine.colorscheme")
local colortool = require("fluoromachine.colortool")

local colors = fluoromachine.colors
local darken = colortool.darken
local blend = colortool.blend

fluoromachine.highlights = {
	--{{{ BASE
	Comment = { fg = colors.comment, italic = vim.g.fluoromachine_italic_comments and true },
	ColorColumn = { bg = colors.bg },
	Conceal = { fg = colors.blue },
	Cursor = { fg = colors.bg, bg = colors.purple },
	CursorColumn = { bg = colors.bg },
	CursorLineNr = { bg = colors.selection, sp = colors.fg },
	CursorLine = { bg = colors.selection, sp = colors.fg },
	lCursor = { link = "Cursor" },
	-- CursorIM = { fg = colors.bg, bg = colors.fg },
	MatchWord = { bold = true },
	-- MatchParen = { fg = colors.red, bg = colors.fg, bold = true },
	MatchWordCur = { bold = true },
	MatchParenCur = { bold = true },
	Normal = { fg = colors.fg, bg = fluoromachine:is_transparent(colors.bg) },
	NormalNC = { link = "Normal" },
	NormalFloat = { fg = colors.fg, bg = colors.bg },
	Pmenu = { fg = colors.fg, bg = colors.bg, bold = true },
	PmenuSel = { fg = colors.fg, bg = colors.selection, bold = true },
	PmenuSbar = { fg = colors.bg, bg = colors.fg, reverse = true, bold = true },
	PmenuThumb = { fg = colors.pink, bg = colors.bg, reverse = true, bold = true },
	TabLine = { fg = colors.fg, bg = colors.bg, sp = colors.fg },
	TabLineSel = { fg = colors.fg, bg = colors.selection, sp = colors.fg, reverse = true },
	TabLineFill = { fg = colors.fg, bg = colors.bg, sp = colors.fg },
	FloatBorder = { fg = colors.fg, bg = colors.bg, sp = colors.fg },
	SignColumn = { fg = colors.red },
	MsgArea = { fg = colors.fg, bg = fluoromachine:is_transparent(colors.bg) },
	ModeMsg = { fg = colors.blue },
	MsgSeparator = { fg = colors.fg, bg = colors.bg },
	MoreMsg = { fg = colors.blue },
	NonText = { fg = colors.fg },
	SpellBad = { sp = colors.error, undercurl = true },
	SpellCap = { sp = colors.purple, undercurl = true },
	SpellLocal = { sp = colors.warn, undercurl = true },
	SpellRare = { sp = colors.cyan, undercurl = true },
	WildMenu = { fg = colors.bg, bg = colors.bg, reverse = true, bold = true },
	Folded = { fg = colors.fg, bg = colors.bg, sp = colors.bg },
	FoldColumn = { fg = colors.fg, bg = colors.bg },
	LineNr = { fg = colors.comment, bg = colors.bg },
	Whitespace = { fg = colors.bg },
	VertSplit = { fg = colors.fg, bg = colors.bg },
	Visual = { fg = colors.selection, bg = colors.bg, reverse = true, bold = true },
	VisualNOS = { bg = colors.bg, reverse = true, bold = true },
	DiffAdd = { fg = colors.add, sp = colors.add, reverse = true },
	DiffChange = { fg = colors.changed, sp = colors.changed },
	DiffDelete = { fg = colors.deleted, reverse = true },
	DiffText = { fg = colors.blue, sp = colors.blue, reverse = true },
	DiffAdded = { fg = colors.add, reverse = true },
	DiffChanged = { fg = colors.changed, reverse = true },
	DiffRemoved = { fg = colors.removed, reverse = true },
	DiffFile = { fg = colors.comment },
	DiffIndexLine = { fg = colors.purple },
	QuickFixLine = { bg = colors.bg },
	-- TermCursor = { fg = colors.bg, bg = colors.fg },
	-- TermCursorNC = { fg = colors.bg, bg = colors.fg },
	Directory = { fg = colors.blue },
	SpecialKey = { fg = colors.red },
	Title = { fg = colors.orange, bold = true },
	Search = { fg = colors.yellow, reverse = true },
	IncSearch = { fg = colors.orange },
	Substitute = { fg = colors.orange, reverse = true },
	Question = { fg = colors.cyan, bold = true },
	EndOfBuffer = { fg = colors.bg },

	Constant = { fg = colors.purple, bg = blend(colors.purple, colors.bg, 0.15) },
	--       *Constant        any constant
	--        String          a string constant: "this is a string"
	--        Character       a character constant: 'c', '\n'
	--        Number          a number constant: 234, 0xff
	--        Boolean         a boolean constant: TRUE, false
	--        Float           a floating point constant: 2.3e10
	String = { fg = colors.purple },
	-- Character = { fg = colors.cyan },
	-- Number = { fg = colors.cyan },
	-- Boolean = { fg = colors.cyan },
	-- Float = { fg = colors.cyan },
	Identifier = { fg = colors.pink, bg = blend(colors.pink, colors.bg, 0.15) },
	--       *Identifier      any variable name
	-- Function        function name (also: methods for classes)
	-- Variable = { fg = colors.blue },
	Function = {
		fg = colors.yellow,
		bg = blend(colors.yellow, colors.bg, 0.15),
		italic = vim.g.fluoromachine_italic_functions or false,
	},

	Statement = { fg = colors.pink },
	--       *Statement       any statement
	--        Conditional     if, then, else, endif, switch, etc.
	--        Repeat          for, do, while, etc.
	--        Label           case, default, etc.
	--        Operator        "sizeof", "+", "*", etc.
	--        Keyword         any other keyword
	--        Exception       try, catch, throw
	-- Conditional = { fg = colors.pink },
	-- Repeat = { fg = colors.pink },
	-- Label = { fg = colors.pink },
	-- Operator = { fg = colors.pink },
	Keyword = {
		fg = colors.pink,
		bg = blend(colors.pink, colors.bg, 0.15),
		italic = vim.g.fluoromachine_italic_keywords or false,
	},
	-- Exception = { fg = colors.pink },

	PreProc = { fg = colors.purple, bg = blend(colors.purple, colors.bg, 0.15) },
	--       *PreProc         generic Preprocessor
	--        Include         preprocessor #include
	--        Define          preprocessor #define
	--        Macro           same as Define
	--        PreCondit       preprocessor #if, #else, #endif, etc.
	Include = { fg = colors.pink },
	-- Define = { fg = colors.orange },
	-- Macro = { fg = colors.orange },
	-- PreCondit = { fg = colors.orange },

	Type = { fg = colors.pink, bg = blend(colors.pink, colors.bg, 0.15) },
	--       *Type            int, long, char, etc.
	--        StorageClass    static, register, volatile, etc.
	--        Structure       struct, union, enum, etc.
	--        Typedef         A typedef
	-- StorageClass = { fg = colors.yellow },
	-- Structure = { fg = colors.yellow },
	-- Typedef = { fg = colors.yellow },

	Special = { fg = colors.yellow, bg = blend(colors.yellow, colors.bg, 0.15) },
	--       *Special         any special symbol
	--        SpecialChar     special character in a constant
	--        Tag             you can use CTRL-] on this
	--        Delimiter       character that needs attention
	--        SpecialComment  special things inside a comment
	--        Debug           debugging statements
	-- SpecialChar = { fg = colors.red },
	-- Tag = { fg = colors.red },
	-- Delimiter = { fg = colors.red },
	-- SpecialComment = { fg = colors.red },
	-- Debug = { fg = colors.red },

	Underlined = { fg = colors.purple, underline = true },
	Bold = { bold = true },
	Italic = { italic = true },
	Ignore = { fg = colors.cyan, bg = colors.bg, bold = true },
	Todo = { fg = colors.red, bg = colors.bg, bold = true },
	Error = { fg = colors.error, bg = colors.bg, bold = true },
	ErrorMsg = { fg = colors.error, reverse = true },
	WarningMsg = { fg = colors.warn, bold = true },
	--}}}

	--{{{ TREESITTER
	TSFunction = { link = "Function" },
	TSFunctionCall = { link = "Function" },
	TSFuncBuiltin = { link = "Function" },
	TSParameter = { fg = colors.fg, bold = true, italic = true },
	TSType = { fg = colors.yellow },
	TSTypeBuiltin = { link = "TSType" },
	TSConstructor = { fg = colors.pink },
	TSKeyWord = { link = "Keyword" },
	TSKeyWordFunction = { link = "TSKeyWord" },
	TSKeyWordReturn = { link = "Statement" },
	TSConditional = { link = "Statement" },
	TSVariable = { fg = colors.blue, italic = vim.g.fluoromachine_italic_variables or false },
	TSVariableBuiltin = { link = "TSVariable" },
	TSInclude = { link = "Include" },
	TSConstant = { fg = colors.orange },
	TSNumber = { fg = colors.pink },
	TSFloat = { link = "TSNumber" },
	TSBoolean = { fg = colors.yellow },
	TSTag = { fg = colors.yellow, bg = blend(colors.yellow, colors.bg, 0.15) },
	TSTagAttribute = { fg = colors.pink, bg = blend(colors.purple, colors.bg, 0.15) },
	TSTagDelimiter = { fg = colors.blue, bg = blend(colors.blue, colors.bg, 0.15) },
	TSPunctBracket = { fg = colors.purple },
	TSPunctDelimiter = { fg = colors.fg },
	TSOperator = { link = "Keyword" },
	TSTitle = { link = "TSText" },
	--}}}

	--{{{ DIAGNOSTIC
	DiagnosticError = { fg = colors.error },
	DiagnosticWarn = { fg = colors.warn },
	DiagnosticInfo = { fg = colors.info },
	DiagnosticHint = { fg = colors.info },

	DiagnosticVirtualTextError = { fg = colors.error, bg = blend(colors.error, colors.bg, 0.15) },
	DiagnosticVirtualTextWarn = { fg = colors.warn, bg = blend(colors.warn, colors.bg, 0.15) },
	DiagnosticVirtualTextInfo = { fg = colors.info, bg = blend(colors.info, colors.bg, 0.15) },
	DiagnosticVirtualTextHint = { fg = colors.hint, bg = blend(colors.hint, colors.bg, 0.15) },

	DiagnosticUnderlineError = { undercurl = true, sp = colors.error },
	DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warn },
	DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info },
	DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint },
	--}}}

	--{{{ LSP
	LspReferenceText = { bg = colors.bg },
	LspReferenceRead = { bg = colors.bg },
	LspReferenceWrite = { bg = colors.bg },
	--}}}

	--{{{ LSPSAGA
	-- code action
	LspSagaCodeActionTitle = { fg = colors.pink, bold = true },
	LspSagaCodeActionBorder = { fg = colors.pink },
	LspSagaCodeActionTrunCateLine = { link = "LspSagaCodeActionBorder" },
	LspSagaCodeActionContent = { fg = colors.fg, bold = true },

	-- finder
	LspSagaLspFinderBorder = { fg = colors.pink },
	LspSagaAutoPreview = { fg = colors.pink },
	LspSagaFinderSelection = { fg = colors.yellow, bold = true },
	TargetFileName = { link = "Comment" },

	DefinitionsIcon = { fg = colors.yellow },
	Definitions = { fg = colors.pink, bold = true, reverse = true },
	ReferencesIcon = { fg = colors.yellow },
	References = { fg = colors.pink, bold = true, reverse = true },

	--winbar finder
	LSFinderBarSepStart = { fg = colors.bg },
	LSFinderBarSepEnd = { fg = colors.bg },
	LSFinderBarFind = { fg = colors.pink, bg = colors.bg, bold = true },
	LSFinderBarParam = { fg = colors.pink, bg = colors.bg, bold = true },

	-- definition
	LspSagaDefPreviewBorder = { fg = colors.pink },

	-- hover
	LspSagaHoverBorder = { fg = colors.pink },
	LspSagaHoverTrunCateLine = { link = "LspSagaHoverBorder" },

	-- rename
	LspSagaRenameBorder = { fg = colors.pink },
	LspSagaRenameMatch = { link = "Search" },

	-- diagnostic
	LspSagaDiagnosticError = { link = "DiagnosticError" },
	LspSagaDiagnosticWarn = { link = "DiagnosticWarn" },
	LspSagaDiagnosticInfo = { link = "DiagnosticInfo" },
	LspSagaDiagnosticHint = { link = "DiagnosticHint" },
	LspSagaErrorTrunCateLine = { link = "DiagnosticError" },
	LspSagaWarnTrunCateLine = { link = "DiagnosticWarn" },
	LspSagaInfoTrunCateLine = { link = "DiagnosticInfo" },
	LspSagaHintTrunCateLine = { link = "DiagnosticHint" },
	LspSagaDiagnosticHeader = { link = "Title" },
	LspSagaDiagnosticBorder = { fg = colors.pink },
	--}}}

	--{{{ CMP KIND
	CmpItemAbbrDeprecated = { fg = colors.gray, strikethrough = true },
	CmpItemAbbrMatch = { fg = colors.yellow, reverse = true },
	CmpItemAbbrMatchFuzzy = { fg = colors.yellow, reverse = true },
	CmpItemKindFunction = { link = "TSFunction" },
	CmpItemKindMethod = { link = "TSMethod" },
	CmpItemKindConstructor = { link = "TSConstructor" },
	CmpItemKindClass = { link = "TSType" },
	CmpItemKindEnum = { link = "TSConstant" },
	CmpItemKindEvent = { fg = colors.yellow },
	CmpItemKindInterface = { link = "TSConstructor" },
	CmpItemKindStruct = { link = "TSType" },
	CmpItemKindVariable = { link = "TSVariableBuiltin" },
	CmpItemKindField = { link = "TSProperty" },
	CmpItemKindProperty = { link = "TSProperty" },
	CmpItemKindEnumMember = { link = "TSConstBuiltin" },
	CmpItemKindConstant = { link = "TSConstant" },
	CmpItemKindKeyword = { link = "TSKeyword" },
	CmpItemKindModule = { link = "TSFunction" },
	CmpItemKindValue = { fg = colors.fg },
	CmpItemKindUnit = { link = "TSNumber" },
	CmpItemKindText = { link = "TSString" },
	CmpItemKindSnippet = { fg = colors.fg },
	CmpItemKindFile = { fg = colors.fg },
	CmpItemKindFolder = { fg = colors.fg },
	CmpItemKindColor = { fg = colors.fg },
	CmpItemKindReference = { fg = colors.fg },
	CmpItemKindOperator = { link = "TSOperator" },
	CmpItemKindTypeParameter = { fg = colors.purple },
	CmpItemKindTabnine = { fg = colors.pink },
	CmpItemKindEmoji = { fg = colors.yellow },
	--}}}

	--{{{ NVIM-TREE
	NvimTreeNormalNC = { link = "NormalNC" },
	NvimTreeVertSplit = { fg = colors.bg },

	NvimTreeFolderIcon = { fg = colors.yellow, bg = blend(colors.yellow, colors.bg, 0.15) },
	NvimTreeFolderName = { fg = colors.fg },
	NvimTreeOpenedFolderName = { fg = colors.yellow, bg = blend(colors.yellow, colors.bg, 0.15) },
	NvimTreeRootFolder = { fg = colors.blue },

	NvimTreeLspDiagnosticsError = { fg = colors.error },
	NvimTreeLspDiagnosticsWarning = { fg = colors.warn },
	NvimTreeLspDiagnosticsInformation = { fg = colors.info },

	NvimTreeGitStaged = { fg = colors.added },
	NvimTreeGitNew = { fg = colors.added },
	NvimTreeGitDeleted = { fg = colors.deleted },
	--}}}

	-- {{{ NEO-TREE
	NeoTreeDirectoryName = { fg = colors.fg },
	NeoTreeDirectoryIcon = { fg = colors.yellow, bg = blend(colors.yellow, colors.bg, 0.15) },
	NeoTreeRootName = { fg = colors.yellow, bg = blend(colors.yellow, colors.bg, 0.15) },
	-- }}}

	--{{{ TELESCOPE
	TelescopePreviewTitle = { fg = colors.bg, bg = colors.blue },
	TelescopeResultsTitle = { fg = colors.bg, bg = colors.blue },
	TelescopePromptTitle = { fg = colors.bg, bg = colors.blue },

	TelescopeSelection = { fg = colors.yellow },
	TelescopeMatching = { fg = colors.yellow, reverse = true },
	--}}}

	--{{{ DASHBOARD
	DashboardHeader = { fg = blend(colors.pink, colors.purple, 0.5) },
	DashboardCenter = { fg = colors.yellow },
	DashboardFooter = { fg = colors.purple },
	--}}}

	--{{{ GIT
	SignAdd = { fg = colors.add },
	SignChange = { fg = colors.changed },
	SignDelete = { fg = colors.deleted },
	GitSignsAdd = { fg = colors.add },
	GitSignsChange = { fg = colors.changed },
	GitSignsDelete = { fg = colors.deleted },
	GitGutterAdd = { fg = colors.add },
	GitGutterChange = { fg = colors.changed },
	GitGutterDelete = { fg = colors.deleted },
	--}}}

	--{{{ HOP
	HopPreview = { fg = colors.yellow, bg = blend(colors.yellow, colors.bg, 0.15), bold = true },
	HopNextKey = { fg = colors.pink, bg = blend(colors.pink, colors.bg, 0.15), bold = true },
	HopNextKey1 = { fg = colors.blue, bg = blend(colors.blue, colors.bg, 0.15), bold = true },
	HopNextKey2 = { fg = darken(colors.blue, 1.25) },
	HopUnmatched = { fg = darken(colors.fg, 2) },
	--}}}

	--{{{ TWILIGHT
	Twilight = { fg = fluoromachine:is_not_transparent(colors.fg, 2) },
	--}}}
}
