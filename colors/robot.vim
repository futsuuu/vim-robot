if exists('g:colors_name')
  hi clear
endif
if exists('g:syntax_on')
  syn reset
endif
let g:colors_name = 'robot'
if &bg == 'light'
  if has('nvim')
    lua require('robot.light').setup()
  else
    call robot#light#setup()
  endif
else
  if has('nvim')
    lua require('robot.dark').setup()
  else
    call robot#dark#setup()
  endif
endif
