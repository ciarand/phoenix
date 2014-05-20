"" Color scheme settings
" colorscheme flatlandia
colorscheme default
" set background=light
" set background=dark

let g:airline_powerline_fonts = 1

"" Spell checker colors
highlight clear SpellBad
highlight SpellBad cterm=underline

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
try
  set shortmess+=c
catch /E539: Illegal character/
endtry
