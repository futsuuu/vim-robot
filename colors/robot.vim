" do not edit manually!
if exists('g:colors_name')
  hi clear
endif
if exists('g:syntax_on')
  syn reset
endif
let g:colors_name = 'robot'
if &bg == 'light'
hi! Normal guifg=#556178 ctermfg=60 guibg=#f5f5f6 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! Comment guifg=#989fae ctermfg=247 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! String guifg=#667186 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Constant guifg=#5a719a ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Identifier guifg=#556178 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Function guifg=#436fbc ctermfg=61 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Statement guifg=#7c8597 ctermfg=102 guibg=NONE ctermbg=NONE guisp=NONE gui=italic cterm=italic
hi! Operator guifg=#989fae ctermfg=247 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link Delimiter Operator
hi! Type guifg=#387e7b ctermfg=66 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Special guifg=#556178 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! PreProc guifg=#556178 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Title guifg=#5a719a ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! LineNr guifg=#d2d6db ctermfg=188 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CursorLineNr guifg=#989fae ctermfg=247 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! Whitespace guifg=#d2d6db ctermfg=188 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CursorLine guifg=NONE ctermfg=NONE guibg=#ecedef ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! link CursorColumn CursorLine
hi! StatusLine guifg=#667186 ctermfg=60 guibg=#f5f5f6 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! WinBar guifg=#667186 ctermfg=60 guibg=#f5f5f6 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! WinSeparator guifg=#d2d6db ctermfg=188 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Visual guifg=NONE ctermfg=NONE guibg=#dadfe7 ctermbg=254 guisp=NONE gui=NONE cterm=NONE
hi! Search guifg=NONE ctermfg=NONE guibg=#c1cfe7 ctermbg=152 guisp=NONE gui=NONE cterm=NONE
hi! CurSearch guifg=#f5f5f6 ctermfg=255 guibg=#436fbc ctermbg=61 guisp=NONE gui=bold cterm=bold
hi! Directory guifg=#5a719a ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! NormalFloat guifg=NONE ctermfg=NONE guibg=#eeeff0 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! FloatBorder guifg=#a1a8b5 ctermfg=248 guibg=#f2f2f3 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! link FloatTitle FloatBorder
hi! link Pmenu NormalFloat
hi! link PmenuSel Visual
hi! Error guifg=#ab4c6e ctermfg=131 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! ErrorMsg guifg=#ab4c6e ctermfg=131 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! DiagnosticOk guifg=#288546 ctermfg=65 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticHint guifg=#436fbc ctermfg=61 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticInfo guifg=#008784 ctermfg=30 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticWarn guifg=#8a6e00 ctermfg=94 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticError guifg=#ab4c6e ctermfg=131 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticUnderlineOk guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#288546 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineHint guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#436fbc gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineInfo guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#008784 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineWarn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#8a6e00 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineError guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#ab4c6e gui=undercurl cterm=undercurl
hi! DiagnosticVirtualTextOk guifg=#288546 ctermfg=65 guibg=#e3ebe5 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextHint guifg=#436fbc ctermfg=61 guibg=#e4e9f1 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextInfo guifg=#008784 ctermfg=30 guibg=#e0ebeb ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextWarn guifg=#8a6e00 ctermfg=94 guibg=#ebe9e1 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextError guifg=#ab4c6e ctermfg=131 guibg=#efe5e9 ctermbg=254 guisp=NONE gui=NONE cterm=NONE
hi! MatchParen guifg=#556178 ctermfg=60 guibg=#e0e2e6 ctermbg=254 guisp=NONE gui=bold cterm=bold
hi! IlluminatedWordText guifg=NONE ctermfg=NONE guibg=#e0e2e6 ctermbg=254 guisp=NONE gui=NONE cterm=NONE
hi! link IlluminatedWordRead IlluminatedWordText
hi! link IlluminatedWordWrite IlluminatedWordText
hi! Added guifg=#288546 ctermfg=65 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Removed guifg=#ab4c6e ctermfg=131 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Changed guifg=#436fbc ctermfg=61 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiffAdd guifg=NONE ctermfg=NONE guibg=#d7e4da ctermbg=188 guisp=NONE gui=NONE cterm=NONE
hi! DiffDelete guifg=NONE ctermfg=NONE guibg=#ecdbe0 ctermbg=254 guisp=NONE gui=NONE cterm=NONE
hi! DiffChange guifg=NONE ctermfg=NONE guibg=#d9e1ee ctermbg=254 guisp=NONE gui=NONE cterm=NONE
hi! GitSignsAddInline guifg=NONE ctermfg=NONE guibg=#bad3bf ctermbg=151 guisp=NONE gui=NONE cterm=NONE
hi! GitSignsDeleteInline guifg=NONE ctermfg=NONE guibg=#e2c2cb ctermbg=182 guisp=NONE gui=NONE cterm=NONE
hi! GitSignsChangeInline guifg=NONE ctermfg=NONE guibg=#bad3bf ctermbg=151 guisp=NONE gui=NONE cterm=NONE
hi! link @attribute.builtin @attribute
hi! link @constant.builtin @constant
hi! link @function.builtin @function
hi! link @type.builtin @type
hi! @variable guifg=#556178 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link @keyword.vim Function
hi! @keyword.exception guifg=#7c8597 ctermfg=102 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @keyword.conditional.ternary guifg=#7c8597 ctermfg=102 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link @constructor Function
hi! link @constructor.lua Delimiter
hi! @string.special.url guifg=#436fbc ctermfg=61 guibg=NONE ctermbg=NONE guisp=NONE gui=underline cterm=underline
hi! @markup.link guifg=#436fbc ctermfg=61 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @markup.link.label guifg=#436fbc ctermfg=61 guibg=NONE ctermbg=NONE guisp=NONE gui=underdashed cterm=underdashed
hi! link @markup.link.url @string.special.url
hi! @markup.quote guifg=#7c8597 ctermfg=102 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link TelescopeNormal NormalFloat
hi! link TelescopeTitle FloatTitle
hi! link TelescopeBorder FloatBorder
else
hi! Normal guifg=#a7b1c5 ctermfg=146 guibg=#23262c ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi! Comment guifg=#69707d ctermfg=242 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! String guifg=#969fb1 ctermfg=247 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Constant guifg=#86a0cb ctermfg=110 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Identifier guifg=#a7b1c5 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Function guifg=#709eef ctermfg=75 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Statement guifg=#828a9a ctermfg=245 guibg=NONE ctermbg=NONE guisp=NONE gui=italic cterm=italic
hi! Operator guifg=#69707d ctermfg=242 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link Delimiter Operator
hi! Type guifg=#68adaa ctermfg=73 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Special guifg=#a7b1c5 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! PreProc guifg=#a7b1c5 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Title guifg=#86a0cb ctermfg=110 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! LineNr guifg=#3b3f48 ctermfg=237 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CursorLineNr guifg=#69707d ctermfg=242 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! Whitespace guifg=#3b3f48 ctermfg=237 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CursorLine guifg=NONE ctermfg=NONE guibg=#292c33 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! link CursorColumn CursorLine
hi! StatusLine guifg=#969fb1 ctermfg=247 guibg=#23262c ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi! WinBar guifg=#969fb1 ctermfg=247 guibg=#23262c ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi! WinSeparator guifg=#3b3f48 ctermfg=237 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Visual guifg=NONE ctermfg=NONE guibg=#323843 ctermbg=237 guisp=NONE gui=NONE cterm=NONE
hi! Search guifg=NONE ctermfg=NONE guibg=#38455e ctermbg=238 guisp=NONE gui=NONE cterm=NONE
hi! CurSearch guifg=#23262c ctermfg=235 guibg=#709eef ctermbg=75 guisp=NONE gui=bold cterm=bold
hi! Directory guifg=#86a0cb ctermfg=110 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! NormalFloat guifg=NONE ctermfg=NONE guibg=#282b32 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi! FloatBorder guifg=#616874 ctermfg=241 guibg=#25292f ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi! link FloatTitle FloatBorder
hi! link Pmenu NormalFloat
hi! link PmenuSel Visual
hi! Error guifg=#df7a9b ctermfg=175 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! ErrorMsg guifg=#df7a9b ctermfg=175 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! DiagnosticOk guifg=#5cb572 ctermfg=71 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticHint guifg=#709eef ctermfg=75 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticInfo guifg=#00b8b3 ctermfg=37 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticWarn guifg=#b99d2b ctermfg=143 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticError guifg=#df7a9b ctermfg=175 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticUnderlineOk guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#5cb572 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineHint guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#709eef gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineInfo guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#00b8b3 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineWarn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#b99d2b gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineError guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#df7a9b gui=undercurl cterm=undercurl
hi! DiagnosticVirtualTextOk guifg=#5cb572 ctermfg=71 guibg=#293233 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextHint guifg=#709eef ctermfg=75 guibg=#2a303c ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextInfo guifg=#00b8b3 ctermfg=37 guibg=#263237 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextWarn guifg=#b99d2b ctermfg=143 guibg=#2f3030 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextError guifg=#df7a9b ctermfg=175 guibg=#332e35 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! MatchParen guifg=#a7b1c5 ctermfg=146 guibg=#31353d ctermbg=236 guisp=NONE gui=bold cterm=bold
hi! IlluminatedWordText guifg=NONE ctermfg=NONE guibg=#31353d ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! link IlluminatedWordRead IlluminatedWordText
hi! link IlluminatedWordWrite IlluminatedWordText
hi! Added guifg=#5cb572 ctermfg=71 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Removed guifg=#df7a9b ctermfg=175 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Changed guifg=#709eef ctermfg=75 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiffAdd guifg=NONE ctermfg=NONE guibg=#2d3a37 ctermbg=237 guisp=NONE gui=NONE cterm=NONE
hi! DiffDelete guifg=NONE ctermfg=NONE guibg=#3d333c ctermbg=237 guisp=NONE gui=NONE cterm=NONE
hi! DiffChange guifg=NONE ctermfg=NONE guibg=#2e3746 ctermbg=237 guisp=NONE gui=NONE cterm=NONE
hi! GitSignsAddInline guifg=NONE ctermfg=NONE guibg=#364e42 ctermbg=238 guisp=NONE gui=NONE cterm=NONE
hi! GitSignsDeleteInline guifg=NONE ctermfg=NONE guibg=#583f4b ctermbg=238 guisp=NONE gui=NONE cterm=NONE
hi! GitSignsChangeInline guifg=NONE ctermfg=NONE guibg=#364e42 ctermbg=238 guisp=NONE gui=NONE cterm=NONE
hi! link @attribute.builtin @attribute
hi! link @constant.builtin @constant
hi! link @function.builtin @function
hi! link @type.builtin @type
hi! @variable guifg=#a7b1c5 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link @keyword.vim Function
hi! @keyword.exception guifg=#828a9a ctermfg=245 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @keyword.conditional.ternary guifg=#828a9a ctermfg=245 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link @constructor Function
hi! link @constructor.lua Delimiter
hi! @string.special.url guifg=#709eef ctermfg=75 guibg=NONE ctermbg=NONE guisp=NONE gui=underline cterm=underline
hi! @markup.link guifg=#709eef ctermfg=75 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @markup.link.label guifg=#709eef ctermfg=75 guibg=NONE ctermbg=NONE guisp=NONE gui=underdashed cterm=underdashed
hi! link @markup.link.url @string.special.url
hi! @markup.quote guifg=#828a9a ctermfg=245 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link TelescopeNormal NormalFloat
hi! link TelescopeTitle FloatTitle
hi! link TelescopeBorder FloatBorder
endif
