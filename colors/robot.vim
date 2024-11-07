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
hi! String guifg=#599c39 ctermfg=71 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link Character String
hi! Constant guifg=#a68400 ctermfg=136 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Identifier guifg=#5d6f92 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Function guifg=#5285e1 ctermfg=68 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Statement guifg=#ce5c84 ctermfg=168 guibg=NONE ctermbg=NONE guisp=NONE gui=italic cterm=italic
hi! Operator guifg=#9da8be ctermfg=248 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link Delimiter Operator
hi! Type guifg=#00a39f ctermfg=37 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Special guifg=#5d6f92 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! PreProc guifg=#5d6f92 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Title guifg=#7089b3 ctermfg=67 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! LineNr guifg=#d4d9e2 ctermfg=253 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CursorLineNr guifg=#9da8be ctermfg=248 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! Whitespace guifg=#d4d9e2 ctermfg=253 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CursorLine guifg=NONE ctermfg=NONE guibg=#eceef1 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! link CursorColumn CursorLine
hi! StatusLine guifg=#7988a6 ctermfg=103 guibg=#f5f5f6 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! WinBar guifg=#7988a6 ctermfg=103 guibg=#f5f5f6 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! WinSeparator guifg=#d4d9e2 ctermfg=253 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Visual guifg=NONE ctermfg=NONE guibg=#dee3eb ctermbg=254 guisp=NONE gui=NONE cterm=NONE
hi! Search guifg=NONE ctermfg=NONE guibg=#c6d6f2 ctermbg=189 guisp=NONE gui=NONE cterm=NONE
hi! CurSearch guifg=#f5f5f6 ctermfg=255 guibg=#5285e1 ctermbg=68 guisp=NONE gui=bold cterm=bold
hi! Directory guifg=#7089b3 ctermfg=67 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Question guifg=#7089b3 ctermfg=67 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! NormalFloat guifg=NONE ctermfg=NONE guibg=#eeeff2 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! FloatBorder guifg=#a6b0c4 ctermfg=146 guibg=#f2f2f4 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! link FloatTitle FloatBorder
hi! link Pmenu NormalFloat
hi! link PmenuSel Visual
hi! Error guifg=#ce5c84 ctermfg=168 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! ErrorMsg guifg=#ce5c84 ctermfg=168 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! DiagnosticOk guifg=#599c39 ctermfg=71 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticHint guifg=#5285e1 ctermfg=68 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticInfo guifg=#00a39f ctermfg=37 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticWarn guifg=#a68400 ctermfg=136 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticError guifg=#ce5c84 ctermfg=168 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticUnderlineOk guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#599c39 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineHint guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#5285e1 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineInfo guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#00a39f gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineWarn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#a68400 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineError guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#ce5c84 gui=undercurl cterm=undercurl
hi! DiagnosticVirtualTextOk guifg=#599c39 ctermfg=71 guibg=#e6ede5 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextHint guifg=#5285e1 ctermfg=68 guibg=#e5ebf5 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextInfo guifg=#00a39f ctermfg=37 guibg=#e1eeee ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextWarn guifg=#a68400 ctermfg=136 guibg=#edebe2 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextError guifg=#ce5c84 ctermfg=168 guibg=#f3e7eb ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! MatchParen guifg=#5d6f92 ctermfg=60 guibg=#e1e4ea ctermbg=254 guisp=NONE gui=bold cterm=bold
hi! IlluminatedWordText guifg=NONE ctermfg=NONE guibg=#e1e4ea ctermbg=254 guisp=NONE gui=NONE cterm=NONE
hi! link IlluminatedWordRead IlluminatedWordText
hi! link IlluminatedWordWrite IlluminatedWordText
hi! Added guifg=#599c39 ctermfg=71 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Removed guifg=#ce5c84 ctermfg=168 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Changed guifg=#5285e1 ctermfg=68 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiffAdd guifg=NONE ctermfg=NONE guibg=#dde8da ctermbg=254 guisp=NONE gui=NONE cterm=NONE
hi! DiffDelete guifg=NONE ctermfg=NONE guibg=#f2dee4 ctermbg=254 guisp=NONE gui=NONE cterm=NONE
hi! DiffChange guifg=NONE ctermfg=NONE guibg=#dbe5f4 ctermbg=254 guisp=NONE gui=NONE cterm=NONE
hi! link GitSignsStagedAdd GitSignsAdd
hi! link GitSignsStagedChange GitSignsChange
hi! link GitSignsStagedDelete GitSignsDelete
hi! GitSignsAddInline guifg=NONE ctermfg=NONE guibg=#c5dbbe ctermbg=187 guisp=NONE gui=NONE cterm=NONE
hi! GitSignsDeleteInline guifg=NONE ctermfg=NONE guibg=#edc8d2 ctermbg=224 guisp=NONE gui=NONE cterm=NONE
hi! GitSignsChangeInline guifg=NONE ctermfg=NONE guibg=#c5dbbe ctermbg=187 guisp=NONE gui=NONE cterm=NONE
hi! link @attribute.builtin @attribute
hi! link @constant.builtin @constant
hi! link @function.builtin @function
hi! link @type.builtin @type
hi! @property guifg=#a46bcb ctermfg=134 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @variable guifg=#5d6f92 ctermfg=60 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link @variable.member @property
hi! link @keyword.vim Function
hi! @keyword.exception guifg=#8290ac ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @keyword.conditional.ternary guifg=#8290ac ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link @constructor Function
hi! link @constructor.lua Delimiter
hi! @string.special.url guifg=#5285e1 ctermfg=68 guibg=NONE ctermbg=NONE guisp=NONE gui=underline cterm=underline
hi! @markup.link guifg=#5285e1 ctermfg=68 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @markup.link.label guifg=#5285e1 ctermfg=68 guibg=NONE ctermbg=NONE guisp=NONE gui=underdashed cterm=underdashed
hi! link @markup.link.url @string.special.url
hi! @markup.quote guifg=#8290ac ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link TelescopeNormal NormalFloat
hi! link TelescopeTitle FloatTitle
hi! link TelescopeBorder FloatBorder
hi! CmpItemKind guifg=#a46bcb ctermfg=134 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
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
hi! String guifg=#6baf4c ctermfg=71 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link Character String
hi! Constant guifg=#b99700 ctermfg=136 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Identifier guifg=#afbbd3 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Function guifg=#6398f6 ctermfg=69 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Statement guifg=#e26e96 ctermfg=168 guibg=NONE ctermbg=NONE guisp=NONE gui=italic cterm=italic
hi! Operator guifg=#6c7588 ctermfg=243 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link Delimiter Operator
hi! Type guifg=#00b6b2 ctermfg=37 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Special guifg=#afbbd3 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! PreProc guifg=#afbbd3 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Title guifg=#829bc6 ctermfg=110 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! LineNr guifg=#3a414f ctermfg=238 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CursorLineNr guifg=#6c7588 ctermfg=243 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! Whitespace guifg=#3a414f ctermfg=238 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CursorLine guifg=NONE ctermfg=NONE guibg=#272d39 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! link CursorColumn CursorLine
hi! StatusLine guifg=#8f9ab0 ctermfg=247 guibg=#202632 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi! WinBar guifg=#8f9ab0 ctermfg=247 guibg=#202632 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi! WinSeparator guifg=#3a414f ctermfg=238 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Visual guifg=NONE ctermfg=NONE guibg=#2e3748 ctermbg=237 guisp=NONE gui=NONE cterm=NONE
hi! Search guifg=NONE ctermfg=NONE guibg=#324464 ctermbg=238 guisp=NONE gui=NONE cterm=NONE
hi! CurSearch guifg=#202632 ctermfg=235 guibg=#6398f6 ctermbg=69 guisp=NONE gui=bold cterm=bold
hi! Directory guifg=#829bc6 ctermfg=110 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Question guifg=#829bc6 ctermfg=110 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! NormalFloat guifg=NONE ctermfg=NONE guibg=#252c38 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi! FloatBorder guifg=#636c7e ctermfg=60 guibg=#232935 ctermbg=235 guisp=NONE gui=NONE cterm=NONE
hi! link FloatTitle FloatBorder
hi! link Pmenu NormalFloat
hi! link PmenuSel Visual
hi! Error guifg=#e26e96 ctermfg=168 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! ErrorMsg guifg=#e26e96 ctermfg=168 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! DiagnosticOk guifg=#6baf4c ctermfg=71 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticHint guifg=#6398f6 ctermfg=69 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticInfo guifg=#00b6b2 ctermfg=37 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticWarn guifg=#b99700 ctermfg=136 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticError guifg=#e26e96 ctermfg=168 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticUnderlineOk guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#6baf4c gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineHint guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#6398f6 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineInfo guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#00b6b2 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineWarn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#b99700 gui=undercurl cterm=undercurl
hi! DiagnosticUnderlineError guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE guisp=#e26e96 gui=undercurl cterm=undercurl
hi! DiagnosticVirtualTextOk guifg=#6baf4c ctermfg=71 guibg=#263236 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextHint guifg=#6398f6 ctermfg=69 guibg=#263042 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextInfo guifg=#00b6b2 ctermfg=37 guibg=#22323d ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextWarn guifg=#b99700 ctermfg=136 guibg=#2c3034 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! DiagnosticVirtualTextError guifg=#e26e96 ctermfg=168 guibg=#312d3b ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! MatchParen guifg=#afbbd3 ctermfg=146 guibg=#2f3643 ctermbg=236 guisp=NONE gui=bold cterm=bold
hi! IlluminatedWordText guifg=NONE ctermfg=NONE guibg=#2f3643 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! link IlluminatedWordRead IlluminatedWordText
hi! link IlluminatedWordWrite IlluminatedWordText
hi! Added guifg=#6baf4c ctermfg=71 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Removed guifg=#e26e96 ctermfg=168 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Changed guifg=#6398f6 ctermfg=69 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiffAdd guifg=NONE ctermfg=NONE guibg=#2b3939 ctermbg=237 guisp=NONE gui=NONE cterm=NONE
hi! DiffDelete guifg=NONE ctermfg=NONE guibg=#3c3240 ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! DiffChange guifg=NONE ctermfg=NONE guibg=#2a364c ctermbg=236 guisp=NONE gui=NONE cterm=NONE
hi! link GitSignsStagedAdd GitSignsAdd
hi! link GitSignsStagedChange GitSignsChange
hi! link GitSignsStagedDelete GitSignsDelete
hi! GitSignsAddInline guifg=NONE ctermfg=NONE guibg=#354d3f ctermbg=238 guisp=NONE gui=NONE cterm=NONE
hi! GitSignsDeleteInline guifg=NONE ctermfg=NONE guibg=#573d4f ctermbg=238 guisp=NONE gui=NONE cterm=NONE
hi! GitSignsChangeInline guifg=NONE ctermfg=NONE guibg=#354d3f ctermbg=238 guisp=NONE gui=NONE cterm=NONE
hi! link @attribute.builtin @attribute
hi! link @constant.builtin @constant
hi! link @function.builtin @function
hi! link @type.builtin @type
hi! @property guifg=#b67ddf ctermfg=140 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @variable guifg=#afbbd3 ctermfg=146 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link @variable.member @property
hi! link @keyword.vim Function
hi! @keyword.exception guifg=#8691a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @keyword.conditional.ternary guifg=#8691a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link @constructor Function
hi! link @constructor.lua Delimiter
hi! @string.special.url guifg=#6398f6 ctermfg=69 guibg=NONE ctermbg=NONE guisp=NONE gui=underline cterm=underline
hi! @markup.link guifg=#6398f6 ctermfg=69 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! @markup.link.label guifg=#6398f6 ctermfg=69 guibg=NONE ctermbg=NONE guisp=NONE gui=underdashed cterm=underdashed
hi! link @markup.link.url @string.special.url
hi! @markup.quote guifg=#8691a6 ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link TelescopeNormal NormalFloat
hi! link TelescopeTitle FloatTitle
hi! link TelescopeBorder FloatBorder
hi! CmpItemKind guifg=#b67ddf ctermfg=140 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link CmpItemKindConstant Constant
hi! link CmpItemKindEnum Type
hi! link CmpItemKindFunction Function
hi! link CmpItemKindInterface Type
hi! link CmpItemKindKeyword Constant
hi! link CmpItemKindMethod Function
hi! link CmpItemKindStruct Type
hi! link CmpItemKindText Comment
endif
