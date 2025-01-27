" do not edit manually!
if exists('g:colors_name')
  hi clear
endif
if exists('g:syntax_on')
  syn reset
endif
let g:colors_name = 'robot'
if &bg == 'light'
hi! Normal guifg=#5d6f92 ctermfg=60 guibg=#f5f5f6 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! Comment guifg=#9da8be ctermfg=248 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! String guifg=#609426 ctermfg=65 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link Character String
hi! Constant guifg=#ae7800 ctermfg=136 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Identifier guifg=#5d6f92 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Function guifg=#2f86d9 ctermfg=68 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Statement guifg=#cd5859 ctermfg=167 guibg=NONE ctermbg=NONE guisp=NONE gui=italic cterm=italic
hi! Operator guifg=#9da8be ctermfg=248 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link Delimiter Operator
hi! Type guifg=#009ca2 ctermfg=37 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Special guifg=#5d6f92 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! PreProc guifg=#5d6f92 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Title guifg=#5986b7 ctermfg=67 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! Todo guifg=#f5f5f6 ctermfg=255 guibg=#009ca2 ctermbg=37 guisp=NONE gui=bold cterm=bold
hi! LineNr guifg=#d4d9e2 ctermfg=253 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CursorLineNr guifg=#9da8be ctermfg=248 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! Whitespace guifg=#d4d9e2 ctermfg=253 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CursorLine guifg=NONE ctermfg=NONE guibg=#eceef1 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! link CursorColumn CursorLine
hi! StatusLine guifg=#7383a2 ctermfg=103 guibg=#f5f5f6 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! WinBar guifg=#7383a2 ctermfg=103 guibg=#f5f5f6 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! WinSeparator guifg=#d4d9e2 ctermfg=253 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Visual guifg=NONE ctermfg=NONE guibg=#dbe3ec ctermbg=254 guisp=NONE gui=NONE cterm=NONE
hi! Search guifg=NONE ctermfg=NONE guibg=#c0d7f0 ctermbg=153 guisp=NONE gui=NONE cterm=NONE
hi! CurSearch guifg=#f5f5f6 ctermfg=255 guibg=#2f86d9 ctermbg=68 guisp=NONE gui=bold cterm=bold
hi! Directory guifg=#5986b7 ctermfg=67 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! MoreMsg guifg=#5986b7 ctermfg=67 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link Question MoreMsg
hi! ModeMsg guifg=#8290ac ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! NormalFloat guifg=NONE ctermfg=NONE guibg=#eeeff2 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! FloatBorder guifg=#b3bccc ctermfg=250 guibg=#f1f2f3 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! FloatTitle guifg=#9eb1d0 ctermfg=146 guibg=#eff0f2 ctermbg=255 guisp=NONE gui=bold cterm=bold
hi! link Pmenu NormalFloat
hi! link PmenuSel Visual
hi! Error guifg=#cd5859 ctermfg=167 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! ErrorMsg guifg=#cd5859 ctermfg=167 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! WarningMsg guifg=#ae7800 ctermfg=136 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! DiagnosticOk guifg=#609426 ctermfg=65 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticHint guifg=#2f86d9 ctermfg=68 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticInfo guifg=#009ca2 ctermfg=37 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticWarn guifg=#ae7800 ctermfg=136 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticError guifg=#cd5859 ctermfg=167 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticUnderlineOk guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#609426 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineHint guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#2f86d9 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineInfo guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#009ca2 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineWarn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#ae7800 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineError guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#cd5859 gui=undercurl cterm=undercurl
hi! DiagnosticVirtualTextOk guifg=#609426 ctermfg=65 guibg=#e7ece4 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextHint guifg=#2f86d9 ctermfg=68 guibg=#e4ebf4 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextInfo guifg=#009ca2 ctermfg=37 guibg=#e0edee ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextWarn guifg=#ae7800 ctermfg=136 guibg=#eeeae1 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextError guifg=#cd5859 ctermfg=167 guibg=#f3e7e7 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! MatchParen guifg=#5d6f92 ctermfg=60 guibg=#e1e4ea ctermbg=254 guisp=NONE gui=bold cterm=bold
hi! IlluminatedWordText guifg=NONE ctermfg=NONE guibg=#e1e4ea ctermbg=254 guisp=NONE gui=NONE cterm=NONE
hi! link IlluminatedWordRead IlluminatedWordText
hi! link IlluminatedWordWrite IlluminatedWordText
hi! Added guifg=#609426 ctermfg=65 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Removed guifg=#cd5859 ctermfg=167 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Changed guifg=#2f86d9 ctermfg=68 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiffAdd guifg=NONE ctermfg=NONE guibg=#dde7d8 ctermbg=254 guisp=NONE gui=NONE cterm=NONE
hi! DiffDelete guifg=NONE ctermfg=NONE guibg=#f2dedd ctermbg=224 guisp=NONE gui=NONE cterm=NONE
hi! DiffChange guifg=NONE ctermfg=NONE guibg=#d8e5f3 ctermbg=254 guisp=NONE gui=NONE cterm=NONE
hi! link GitSignsStagedAdd GitSignsAdd
hi! link GitSignsStagedChange GitSignsChange
hi! link GitSignsStagedDelete GitSignsDelete
hi! GitSignsAddInline guifg=NONE ctermfg=NONE guibg=#c7d8bb ctermbg=187 guisp=NONE gui=NONE cterm=NONE
hi! GitSignsDeleteInline guifg=NONE ctermfg=NONE guibg=#eec7c5 ctermbg=224 guisp=NONE gui=NONE cterm=NONE
hi! GitSignsChangeInline guifg=NONE ctermfg=NONE guibg=#c7d8bb ctermbg=187 guisp=NONE gui=NONE cterm=NONE
hi! link @attribute.builtin @attribute
hi! link @constant.builtin @constant
hi! link @function.builtin @function
hi! link @type.builtin @type
hi! @property guifg=#896ed3 ctermfg=98 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @variable guifg=#5d6f92 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link @variable.member @property
hi! link @keyword.vim Function
hi! @keyword.exception guifg=#8290ac ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @keyword.conditional.ternary guifg=#8290ac ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link @constructor Function
hi! link @constructor.lua Delimiter
hi! @string.special.url guifg=#2f86d9 ctermfg=68 guibg=NONE ctermbg=NONE guisp=NONE gui=underline cterm=underline
hi! @markup.link guifg=#2f86d9 ctermfg=68 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @markup.link.label guifg=#2f86d9 ctermfg=68 guibg=NONE ctermbg=NONE guisp=NONE gui=underdashed cterm=underdashed
hi! link @markup.link.url @string.special.url
hi! @markup.quote guifg=#8290ac ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! TelescopeMatching guifg=#2f86d9 ctermfg=68 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! link TelescopeNormal NormalFloat
hi! link TelescopeTitle FloatTitle
hi! link TelescopeBorder FloatBorder
hi! CmpItemAbbr guifg=#7383a2 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CmpItemAbbrMatch guifg=#2f86d9 ctermfg=68 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! CmpItemAbbrMatchFuzzy guifg=#5986b7 ctermfg=67 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CmpItemKind guifg=#896ed3 ctermfg=98 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link CmpItemKindConstant Constant
hi! link CmpItemKindEnum Type
hi! link CmpItemKindFunction Function
hi! link CmpItemKindInterface Type
hi! link CmpItemKindKeyword Constant
hi! link CmpItemKindMethod Function
hi! link CmpItemKindStruct Type
hi! link CmpItemKindText Comment
else
hi! Normal guifg=#afbbd3 ctermfg=146 guibg=#202632 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi! Comment guifg=#6c7588 ctermfg=243 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! String guifg=#7db349 ctermfg=107 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link Character String
hi! Constant guifg=#cd9600 ctermfg=172 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Identifier guifg=#afbbd3 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Function guifg=#50a5fa ctermfg=75 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Statement guifg=#ef7675 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=italic cterm=italic
hi! Operator guifg=#6c7588 ctermfg=243 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link Delimiter Operator
hi! Type guifg=#00bcc0 ctermfg=37 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Special guifg=#afbbd3 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! PreProc guifg=#afbbd3 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Title guifg=#76a5d7 ctermfg=110 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! Todo guifg=#202632 ctermfg=235 guibg=#00bcc0 ctermbg=37 guisp=NONE gui=bold cterm=bold
hi! LineNr guifg=#3a414f ctermfg=238 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CursorLineNr guifg=#6c7588 ctermfg=243 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! Whitespace guifg=#3a414f ctermfg=238 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CursorLine guifg=NONE ctermfg=NONE guibg=#272d39 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! link CursorColumn CursorLine
hi! StatusLine guifg=#96a1b7 ctermfg=109 guibg=#202632 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi! WinBar guifg=#96a1b7 ctermfg=109 guibg=#202632 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi! WinSeparator guifg=#3a414f ctermfg=238 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Visual guifg=NONE ctermfg=NONE guibg=#2d384a ctermbg=237 guisp=NONE gui=NONE cterm=NONE
hi! Search guifg=NONE ctermfg=NONE guibg=#2f4765 ctermbg=238 guisp=NONE gui=NONE cterm=NONE
hi! CurSearch guifg=#202632 ctermfg=235 guibg=#50a5fa ctermbg=75 guisp=NONE gui=bold cterm=bold
hi! Directory guifg=#76a5d7 ctermfg=110 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! MoreMsg guifg=#76a5d7 ctermfg=110 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link Question MoreMsg
hi! ModeMsg guifg=#8691a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! NormalFloat guifg=NONE ctermfg=NONE guibg=#252c38 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi! FloatBorder guifg=#575f70 ctermfg=59 guibg=#232935 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi! FloatTitle guifg=#5a6c8b ctermfg=60 guibg=#242b37 ctermbg=235 guisp=NONE gui=bold cterm=bold
hi! link Pmenu NormalFloat
hi! link PmenuSel Visual
hi! Error guifg=#ef7675 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! ErrorMsg guifg=#ef7675 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! WarningMsg guifg=#cd9600 ctermfg=172 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! DiagnosticOk guifg=#7db349 ctermfg=107 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticHint guifg=#50a5fa ctermfg=75 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticInfo guifg=#00bcc0 ctermfg=37 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticWarn guifg=#cd9600 ctermfg=172 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticError guifg=#ef7675 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticUnderlineOk guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#7db349 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineHint guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#50a5fa gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineInfo guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#00bcc0 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineWarn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#cd9600 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineError guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#ef7675 gui=undercurl cterm=undercurl
hi! DiagnosticVirtualTextOk guifg=#7db349 ctermfg=107 guibg=#283236 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextHint guifg=#50a5fa ctermfg=75 guibg=#253142 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextInfo guifg=#00bcc0 ctermfg=37 guibg=#22323e ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextWarn guifg=#cd9600 ctermfg=172 guibg=#2e3034 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextError guifg=#ef7675 ctermfg=210 guibg=#322e39 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! MatchParen guifg=#afbbd3 ctermfg=146 guibg=#2f3643 ctermbg=236 guisp=NONE gui=bold cterm=bold
hi! IlluminatedWordText guifg=NONE ctermfg=NONE guibg=#2f3643 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! link IlluminatedWordRead IlluminatedWordText
hi! link IlluminatedWordWrite IlluminatedWordText
hi! Added guifg=#7db349 ctermfg=107 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Removed guifg=#ef7675 ctermfg=210 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Changed guifg=#50a5fa ctermfg=75 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiffAdd guifg=NONE ctermfg=NONE guibg=#2d3a39 ctermbg=237 guisp=NONE gui=NONE cterm=NONE
hi! DiffDelete guifg=NONE ctermfg=NONE guibg=#3d333d ctermbg=237 guisp=NONE gui=NONE cterm=NONE
hi! DiffChange guifg=NONE ctermfg=NONE guibg=#29384d ctermbg=237 guisp=NONE gui=NONE cterm=NONE
hi! link GitSignsStagedAdd GitSignsAdd
hi! link GitSignsStagedChange GitSignsChange
hi! link GitSignsStagedDelete GitSignsDelete
hi! GitSignsAddInline guifg=NONE ctermfg=NONE guibg=#394e3f ctermbg=238 guisp=NONE gui=NONE cterm=NONE
hi! GitSignsDeleteInline guifg=NONE ctermfg=NONE guibg=#5a3f47 ctermbg=238 guisp=NONE gui=NONE cterm=NONE
hi! GitSignsChangeInline guifg=NONE ctermfg=NONE guibg=#394e3f ctermbg=238 guisp=NONE gui=NONE cterm=NONE
hi! link @attribute.builtin @attribute
hi! link @constant.builtin @constant
hi! link @function.builtin @function
hi! link @type.builtin @type
hi! @property guifg=#a68cf4 ctermfg=141 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @variable guifg=#afbbd3 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link @variable.member @property
hi! link @keyword.vim Function
hi! @keyword.exception guifg=#8691a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @keyword.conditional.ternary guifg=#8691a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link @constructor Function
hi! link @constructor.lua Delimiter
hi! @string.special.url guifg=#50a5fa ctermfg=75 guibg=NONE ctermbg=NONE guisp=NONE gui=underline cterm=underline
hi! @markup.link guifg=#50a5fa ctermfg=75 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @markup.link.label guifg=#50a5fa ctermfg=75 guibg=NONE ctermbg=NONE guisp=NONE gui=underdashed cterm=underdashed
hi! link @markup.link.url @string.special.url
hi! @markup.quote guifg=#8691a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! TelescopeMatching guifg=#50a5fa ctermfg=75 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! link TelescopeNormal NormalFloat
hi! link TelescopeTitle FloatTitle
hi! link TelescopeBorder FloatBorder
hi! CmpItemAbbr guifg=#96a1b7 ctermfg=109 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CmpItemAbbrMatch guifg=#50a5fa ctermfg=75 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! CmpItemAbbrMatchFuzzy guifg=#76a5d7 ctermfg=110 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CmpItemKind guifg=#a68cf4 ctermfg=141 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link CmpItemKindConstant Constant
hi! link CmpItemKindEnum Type
hi! link CmpItemKindFunction Function
hi! link CmpItemKindInterface Type
hi! link CmpItemKindKeyword Constant
hi! link CmpItemKindMethod Function
hi! link CmpItemKindStruct Type
hi! link CmpItemKindText Comment
endif
