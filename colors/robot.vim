" do not edit manually!
if exists('g:colors_name')
  hi clear
endif
if exists('g:syntax_on')
  syn reset
endif
let g:colors_name = 'robot'
if &bg == 'light'
hi! Normal guifg=#556178 guibg=#f5f5f6 guisp=NONE gui=NONE cterm=NONE
hi! Comment guifg=#989fae guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! String guifg=#667186 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Constant guifg=#5a719a guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Identifier guifg=#556178 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Function guifg=#436fbc guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Statement guifg=#7c8597 guibg=NONE guisp=NONE gui=italic cterm=italic
hi! Operator guifg=#989fae guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link Delimiter Operator
hi! Type guifg=#387e7b guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Special guifg=#556178 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! PreProc guifg=#556178 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Title guifg=#5a719a guibg=NONE guisp=NONE gui=bold cterm=bold
hi! StatusLine guifg=#667186 guibg=#f5f5f6 guisp=NONE gui=NONE cterm=NONE
hi! WinBar guifg=#667186 guibg=#f5f5f6 guisp=NONE gui=NONE cterm=NONE
hi! WinSeparator guifg=#d2d6db guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! LineNr guifg=#d2d6db guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CursorLineNr guifg=#989fae guibg=NONE guisp=NONE gui=bold cterm=bold
hi! Whitespace guifg=#d2d6db guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CursorLine guifg=NONE guibg=#ecedef guisp=NONE gui=NONE cterm=NONE
hi! link CursorColumn CursorLine
hi! Visual guifg=NONE guibg=#dadfe7 guisp=NONE gui=NONE cterm=NONE
hi! Search guifg=NONE guibg=#c1cfe7 guisp=NONE gui=NONE cterm=NONE
hi! CurSearch guifg=#f5f5f6 guibg=#436fbc guisp=NONE gui=bold cterm=bold
hi! NormalFloat guifg=NONE guibg=#eeeff0 guisp=NONE gui=NONE cterm=NONE
hi! FloatBorder guifg=#a1a8b5 guibg=#f2f2f3 guisp=NONE gui=NONE cterm=NONE
hi! link FloatTitle FloatBorder
hi! link Pmenu NormalFloat
hi! link PmenuSel Visual
hi! Error guifg=#ab4c6e guibg=NONE guisp=NONE gui=bold cterm=bold
hi! ErrorMsg guifg=#ab4c6e guibg=NONE guisp=NONE gui=bold cterm=bold
hi! DiagnosticOk guifg=#288546 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticHint guifg=#436fbc guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticInfo guifg=#008784 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticWarn guifg=#8a6e00 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticError guifg=#ab4c6e guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticUnderlineOk guifg=NONE guibg=NONE guisp=#288546 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=#436fbc gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=#008784 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=#8a6e00 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=#ab4c6e gui=undercurl cterm=undercurl
hi! DiagnosticVirtualTextOk guifg=#288546 guibg=#e3ebe5 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextHint guifg=#436fbc guibg=#e4e9f1 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextInfo guifg=#008784 guibg=#e0ebeb guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextWarn guifg=#8a6e00 guibg=#ebe9e1 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextError guifg=#ab4c6e guibg=#efe5e9 guisp=NONE gui=NONE cterm=NONE
hi! MatchParen guifg=#556178 guibg=#d2d6db guisp=NONE gui=bold cterm=bold
hi! IlluminatedWordText guifg=NONE guibg=#e0e2e6 guisp=NONE gui=NONE cterm=NONE
hi! link IlluminatedWordRead IlluminatedWordText
hi! link IlluminatedWordWrite IlluminatedWordText
hi! Added guifg=#288546 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Removed guifg=#ab4c6e guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Changed guifg=#436fbc guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiffAdd guifg=NONE guibg=#d7e4da guisp=NONE gui=NONE cterm=NONE
hi! DiffDelete guifg=NONE guibg=#ecdbe0 guisp=NONE gui=NONE cterm=NONE
hi! DiffChange guifg=NONE guibg=#d9e1ee guisp=NONE gui=NONE cterm=NONE
hi! GitSignsAddInline guifg=NONE guibg=#bad3bf guisp=NONE gui=NONE cterm=NONE
hi! GitSignsDeleteInline guifg=NONE guibg=#e2c2cb guisp=NONE gui=NONE cterm=NONE
hi! GitSignsChangeInline guifg=NONE guibg=#bad3bf guisp=NONE gui=NONE cterm=NONE
hi! link @attribute.builtin @attribute
hi! link @constant.builtin @constant
hi! link @function.builtin @function
hi! link @type.builtin @type
hi! @variable guifg=#556178 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link @keyword.vim Function
hi! @keyword.exception guifg=#7c8597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @keyword.conditional.ternary guifg=#7c8597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link @constructor Function
hi! link @constructor.lua Delimiter
hi! @string.special.url guifg=#436fbc guibg=NONE guisp=NONE gui=underline cterm=underline
hi! @markup.link guifg=#436fbc guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @markup.link.label guifg=#436fbc guibg=NONE guisp=NONE gui=underdashed cterm=underdashed
hi! link @markup.link.url @string.special.url
hi! @markup.quote guifg=#7c8597 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link TelescopeNormal NormalFloat
hi! link TelescopeTitle FloatTitle
hi! link TelescopeBorder FloatBorder
else
hi! Normal guifg=#a7b1c5 guibg=#23262c guisp=NONE gui=NONE cterm=NONE
hi! Comment guifg=#69707d guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! String guifg=#969fb1 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Constant guifg=#86a0cb guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Identifier guifg=#a7b1c5 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Function guifg=#709eef guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Statement guifg=#828a9a guibg=NONE guisp=NONE gui=italic cterm=italic
hi! Operator guifg=#69707d guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link Delimiter Operator
hi! Type guifg=#68adaa guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Special guifg=#a7b1c5 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! PreProc guifg=#a7b1c5 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Title guifg=#86a0cb guibg=NONE guisp=NONE gui=bold cterm=bold
hi! StatusLine guifg=#969fb1 guibg=#23262c guisp=NONE gui=NONE cterm=NONE
hi! WinBar guifg=#969fb1 guibg=#23262c guisp=NONE gui=NONE cterm=NONE
hi! WinSeparator guifg=#3b3f48 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! LineNr guifg=#3b3f48 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CursorLineNr guifg=#69707d guibg=NONE guisp=NONE gui=bold cterm=bold
hi! Whitespace guifg=#3b3f48 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CursorLine guifg=NONE guibg=#292c33 guisp=NONE gui=NONE cterm=NONE
hi! link CursorColumn CursorLine
hi! Visual guifg=NONE guibg=#323843 guisp=NONE gui=NONE cterm=NONE
hi! Search guifg=NONE guibg=#38455e guisp=NONE gui=NONE cterm=NONE
hi! CurSearch guifg=#23262c guibg=#709eef guisp=NONE gui=bold cterm=bold
hi! NormalFloat guifg=NONE guibg=#282b32 guisp=NONE gui=NONE cterm=NONE
hi! FloatBorder guifg=#616874 guibg=#25292f guisp=NONE gui=NONE cterm=NONE
hi! link FloatTitle FloatBorder
hi! link Pmenu NormalFloat
hi! link PmenuSel Visual
hi! Error guifg=#df7a9b guibg=NONE guisp=NONE gui=bold cterm=bold
hi! ErrorMsg guifg=#df7a9b guibg=NONE guisp=NONE gui=bold cterm=bold
hi! DiagnosticOk guifg=#5cb572 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticHint guifg=#709eef guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticInfo guifg=#00b8b3 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticWarn guifg=#b99d2b guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticError guifg=#df7a9b guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticUnderlineOk guifg=NONE guibg=NONE guisp=#5cb572 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=#709eef gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=#00b8b3 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=#b99d2b gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=#df7a9b gui=undercurl cterm=undercurl
hi! DiagnosticVirtualTextOk guifg=#5cb572 guibg=#293233 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextHint guifg=#709eef guibg=#2a303c guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextInfo guifg=#00b8b3 guibg=#263237 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextWarn guifg=#b99d2b guibg=#2f3030 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextError guifg=#df7a9b guibg=#332e35 guisp=NONE gui=NONE cterm=NONE
hi! MatchParen guifg=#a7b1c5 guibg=#3b3f48 guisp=NONE gui=bold cterm=bold
hi! IlluminatedWordText guifg=NONE guibg=#31353d guisp=NONE gui=NONE cterm=NONE
hi! link IlluminatedWordRead IlluminatedWordText
hi! link IlluminatedWordWrite IlluminatedWordText
hi! Added guifg=#5cb572 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Removed guifg=#df7a9b guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Changed guifg=#709eef guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiffAdd guifg=NONE guibg=#2d3a37 guisp=NONE gui=NONE cterm=NONE
hi! DiffDelete guifg=NONE guibg=#3d333c guisp=NONE gui=NONE cterm=NONE
hi! DiffChange guifg=NONE guibg=#2e3746 guisp=NONE gui=NONE cterm=NONE
hi! GitSignsAddInline guifg=NONE guibg=#364e42 guisp=NONE gui=NONE cterm=NONE
hi! GitSignsDeleteInline guifg=NONE guibg=#583f4b guisp=NONE gui=NONE cterm=NONE
hi! GitSignsChangeInline guifg=NONE guibg=#364e42 guisp=NONE gui=NONE cterm=NONE
hi! link @attribute.builtin @attribute
hi! link @constant.builtin @constant
hi! link @function.builtin @function
hi! link @type.builtin @type
hi! @variable guifg=#a7b1c5 guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link @keyword.vim Function
hi! @keyword.exception guifg=#828a9a guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @keyword.conditional.ternary guifg=#828a9a guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link @constructor Function
hi! link @constructor.lua Delimiter
hi! @string.special.url guifg=#709eef guibg=NONE guisp=NONE gui=underline cterm=underline
hi! @markup.link guifg=#709eef guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @markup.link.label guifg=#709eef guibg=NONE guisp=NONE gui=underdashed cterm=underdashed
hi! link @markup.link.url @string.special.url
hi! @markup.quote guifg=#828a9a guibg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link TelescopeNormal NormalFloat
hi! link TelescopeTitle FloatTitle
hi! link TelescopeBorder FloatBorder
endif
