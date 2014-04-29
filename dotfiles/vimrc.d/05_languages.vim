""" FILE-SPECIFIC SETTINGS
"" Text and Markdown files
" For all text files set 'textwidth' to 78 characters.
autocmd FileType text setlocal textwidth=78
autocmd BufRead,BufNewFile *.md set filetype=markdown

"" Javascript and JSON files
autocmd BufNewFile,BufRead *.json set filetype=javascript

"" Twig files (jinja)
" autocmd BufNewFile,BufRead *.twig set filetype=jinja

"" Coffeescript (yuck)
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

"" YAML (yuck)
autocmd BufNewFile,BufReadPost *.yml,*.yaml setl shiftwidth=2 expandtab

"" Commit messages (git)
au BufNewFile,BufRead COMMIT_EDITMSG set spell

"" HTML files
" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'
" Allow navigation between xml tags using %
runtime macros/matchit.vim

"" Syntax highlighting
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

"" Cursor position
" When editing a file, always jump to the last known cursor position.
" Don't do it for commit messages, when the position is invalid, or when
" inside an event handler (happens when dropping a file on gvim).
autocmd BufReadPost *
        \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
