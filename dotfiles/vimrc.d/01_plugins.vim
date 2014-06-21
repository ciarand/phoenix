set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Tmux
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'

" airlimne
Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'

" Project-specific settings
Plugin 'editorconfig/editorconfig-vim'
" TODO: don't need a bundle for this
Plugin 'thinca/vim-localrc'

" File manipulation stuff
Plugin 'tpope/vim-vinegar'
" TODO: don't really use this much, maybe find a better solution
" would be good to get Subl-esque @ functionality
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'

" Syntax stuff
Plugin 'tpope/vim-markdown'
Plugin 'xsbeats/vim-blade'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'lepture/vim-jinja'
Plugin 'derekwyatt/vim-scala'
" TODO: bug the maintainer to remove the stupid Go stuff so I can remove some
" of the extraneous plugins above
" Plugin 'sheerun/vim-polyglot'

" Go stuff
" Plugin 'Blackrush/vim-gocode'
Plugin 'fatih/vim-go'

" TODO: still not happy with this
" completion stuff
" Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'tpope/vim-commentary'
Plugin 'ervandew/supertab'

" Linters
Plugin 'scrooloose/syntastic'

" tpope's other stuff - should probably just download his profile
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-rsi'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'

" Git stuff
Plugin 'tpope/vim-fugitive'
" NOTE: removed vim-gitgutter because it sometimes threw stupid errors
" Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'

" Tags
Plugin 'majutsushi/tagbar'

" Alignment stuff
Plugin 'godlygeek/tabular'

" Motion stuff
Plugin 'Lokaltog/vim-easymotion'

call vundle#end()

filetype plugin indent on
