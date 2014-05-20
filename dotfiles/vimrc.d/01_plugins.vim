set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Tmux
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jgdavey/tslime.vim'

" powerline
Plugin 'bling/vim-airline'

" Project-specific settings
Plugin 'thinca/vim-localrc'
Plugin 'editorconfig/editorconfig-vim'

" Color schemes
Plugin 'chriskempson/base16-vim'
Plugin 'jordwalke/flatlandia'
Plugin 'jnurmine/Zenburn'

" NERDtree and other file manipulation bundles
Plugin 'tpope/vim-vinegar'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'

" Syntax stuff
Plugin 'tpope/vim-markdown'
Plugin 'xsbeats/vim-blade'
Plugin 'ervandew/supertab'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'lepture/vim-jinja'
Plugin 'tpope/vim-commentary'
" Note: I'd love to use this, but it breaks Go autocompletion hard
" Plugin 'sheerun/vim-polyglot'

" Go stuff
" Plugin 'Blackrush/vim-gocode'
Plugin 'fatih/vim-go'

" ycm
" Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet.vim'

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

" Git stuff
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Quickfix toggle
Plugin 'Valloric/ListToggle'

" Tags
Plugin 'taglist.vim'
Plugin 'majutsushi/tagbar'

" Alignment stuff
Plugin 'godlygeek/tabular'

call vundle#end()

filetype plugin indent on
