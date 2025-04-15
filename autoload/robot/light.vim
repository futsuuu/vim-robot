" do not edit manually!
fu! robot#light#setup() abort
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
hi! link PreProc Statement
hi! Title guifg=#5986b7 ctermfg=67 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! Todo guifg=#f5f5f6 ctermfg=255 guibg=#009ca2 ctermbg=37 guisp=NONE gui=bold cterm=bold
hi! LineNr guifg=#d4d9e2 ctermfg=253 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CursorLineNr guifg=#9da8be ctermfg=248 guibg=NONE ctermbg=NONE guisp=NONE gui=bold cterm=bold
hi! Whitespace guifg=#d4d9e2 ctermfg=253 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! CursorLine guifg=NONE ctermfg=NONE guibg=#eceef1 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! link CursorColumn CursorLine
hi! StatusLine guifg=#5d6f92 ctermfg=60 guibg=#d4d9e2 ctermbg=253 guisp=NONE gui=NONE cterm=NONE
hi! StatusLineNC guifg=#8290ac ctermfg=103 guibg=#d4d9e2 ctermbg=253 guisp=NONE gui=NONE cterm=NONE
hi! TabLine guifg=NONE ctermfg=NONE guibg=#d8e5f3 ctermbg=254 guisp=NONE gui=NONE cterm=NONE
hi! link TabLineFill TabLine
hi! link TabLineSel Normal
hi! WinBar guifg=#7383a2 ctermfg=103 guibg=#f5f5f6 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! WinSeparator guifg=#d4d9e2 ctermfg=253 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Visual guifg=NONE ctermfg=NONE guibg=#dbe3ec ctermbg=254 guisp=NONE gui=NONE cterm=NONE
hi! Search guifg=NONE ctermfg=NONE guibg=#c0d7f0 ctermbg=153 guisp=NONE gui=NONE cterm=NONE
hi! CurSearch guifg=#f5f5f6 ctermfg=255 guibg=#2f86d9 ctermbg=68 guisp=NONE gui=bold cterm=bold
hi! Directory guifg=#5986b7 ctermfg=67 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! MoreMsg guifg=#5986b7 ctermfg=67 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! link Question MoreMsg
hi! ModeMsg guifg=#8290ac ctermfg=103 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! NonText guifg=#d4d9e2 ctermfg=253 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! NormalFloat guifg=NONE ctermfg=NONE guibg=#eeeff2 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! FloatBorder guifg=#b3bbcc ctermfg=250 guibg=#f1f2f3 ctermbg=255 guisp=NONE gui=NONE cterm=NONE
hi! FloatTitle guifg=#9da8be ctermfg=248 guibg=#eff0f2 ctermbg=255 guisp=NONE gui=bold cterm=bold
hi! link Pmenu NormalFloat
hi! link PmenuSel Visual
hi! PmenuThumb guifg=NONE ctermfg=NONE guibg=#9da8be ctermbg=248 guisp=NONE gui=NONE cterm=NONE
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
hi! link SpellLocal DiagnosticUnderlineHint
hi! link SpellRare DiagnosticUnderlineInfo
hi! link SpellCap DiagnosticUnderlineWarn
hi! link SpellBad DiagnosticUnderlineError
hi! MatchParen guifg=#5d6f92 ctermfg=60 guibg=#e1e4ea ctermbg=254 guisp=NONE gui=bold cterm=bold
hi! Added guifg=#609426 ctermfg=65 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Removed guifg=#cd5859 ctermfg=167 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! Changed guifg=#2f86d9 ctermfg=68 guibg=NONE ctermbg=NONE guisp=NONE gui=NONE cterm=NONE
hi! DiffAdd guifg=NONE ctermfg=NONE guibg=#dde7d8 ctermbg=254 guisp=NONE gui=NONE cterm=NONE
hi! DiffDelete guifg=NONE ctermfg=NONE guibg=#f2dedd ctermbg=224 guisp=NONE gui=NONE cterm=NONE
hi! DiffChange guifg=NONE ctermfg=NONE guibg=#d8e5f3 ctermbg=254 guisp=NONE gui=NONE cterm=NONE
hi! link gitcommitHeader Title
hi! link gitcommitSummary Title
hi! link diffLine Comment
hi! link diffSubname Title
hi! link diffNewFile Added
hi! link diffOldFile Removed
hi! link diffIndexLine Comment
endf
