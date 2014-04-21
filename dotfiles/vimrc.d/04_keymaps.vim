""" MAPPINGS, SHORTCUTS, AND MORE
"" Leader settings
let mapleader = "," " Leader is the comma key

"" Remap esc key
inoremap jk <esc>

"" Highlighting
nnoremap <silent> <leader>/ :nohlsearch<CR>

"" Redraw on <leader>1
nnoremap <silent> <leader>1 :redraw!<CR>
"" Splits
" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Open splits with <leader>- and <leader>|
map <Leader>- :split<CR>
map <Leader><bar> :vsplit<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"" Vimrc shortcuts
" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"" :w + sudo command
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"" Autocompletion settings
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

" Avoid accidental hits of <F1> while aiming for <Esc>
noremap! <F1> <Esc>

" Use Q for formatting the current paragraph (or visual selection)
vnoremap Q gq
nnoremap Q gqap

" Remap j and k to act as expected when used on long, wrapped, lines
nnoremap j gj
nnoremap k gk

" Quick yanking to the end of the line
nnoremap Y y$
