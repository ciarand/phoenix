""" Bundles
let g:syntastic_mode_map = { 'mode': 'active',
                            \ 'active_filetypes': [],
                            \ 'passive_filetypes': ['css', 'scss', 'sass'] }

""" PLUGINS
"" PHPQA tools
" Pass arguments to phpcs binary
" PSR2 includes PSR1. This should be modifiable on a per-project basis
let g:syntastic_php_phpcs_args = "--standard=PSR2"

let g:vdebug_options = {}

"" Netrw (not technically a plugin I guess)
" This stops it from doing that stupid cursorline thing
let g:netrw_cursor = 0
" maintain the last file
let b:netrw_lastfile = 1
" don't use an errorwindow (just echo it)
let g:netrw_use_errorwindow = 0

"" Tagbar
map <C-k><C-v> :TagbarToggle<CR>
map <leader>v :TagbarOpen fjc<CR>:TagbarShowTag<CR>
let g:tagbar_autofocus = 1

nnoremap <leader>. :CtrlPTag<CR>

"" Per-project vimrc files
let g:localrc_filename = ".local.vimrc"

"" Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_debug_file = '~/.syntastic.log'
let g:syntastic_always_populate_loc_list = 1

"" Use AG (silver searcher) over anything else
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

