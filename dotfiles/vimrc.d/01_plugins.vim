filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle "gmarik/vundle"

" Window management
Bundle "christoomey/vim-tmux-navigator"

" powerline
Bundle "bling/vim-airline"

" Project-specific settings
Bundle "thinca/vim-localrc"
Bundle "editorconfig/editorconfig-vim"

" Color schemes
Bundle "chriskempson/base16-vim"
Bundle "jordwalke/flatlandia"
Bundle "jnurmine/Zenburn"

" NERDtree and other file manipulation bundles
Bundle "tpope/vim-vinegar"
Bundle "kien/ctrlp.vim"
Bundle "rking/ag.vim"

" Syntax stuff
Bundle "tpope/vim-markdown"
Bundle "mukiwu/vim-twig"
Bundle "xsbeats/vim-blade"
Bundle "jnwhiteh/vim-golang"
Bundle "ervandew/supertab"
Bundle "evanmiller/nginx-vim-syntax"
Bundle "vim-scripts/VimClojure"
Bundle "kchmck/vim-coffee-script"
Bundle "lepture/vim-jinja"
Bundle "tpope/vim-commentary"

" Go stuff
Bundle "Blackrush/vim-gocode"

" Linters
Bundle "scrooloose/syntastic"

" tpope"s other stuff - should probably just download his profile
Bundle "tpope/vim-unimpaired"
Bundle "tpope/vim-endwise"
Bundle "tpope/vim-surround"
Bundle "tpope/vim-dispatch"
Bundle "tpope/vim-eunuch"
Bundle "tpope/vim-rsi"
Bundle "tpope/vim-repeat"

" Git stuff
Bundle "tpope/vim-fugitive"
Bundle "airblade/vim-gitgutter"

" PHP stuff
Bundle "vim-scripts/php.vim"
Bundle "joonty/vim-phpunitqf"

" Quickfix toggle
Bundle "Valloric/ListToggle"

" Tagbar
Bundle "majutsushi/tagbar"

" Alignment stuff
Bundle "godlygeek/tabular"

filetype on
