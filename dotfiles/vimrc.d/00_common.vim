""" BARE ESSENTIALS
"" Modern(ish) settings
" Use Vim settings, rather then Vi settings
set nocompatible
" Set the shell to Bash for plugin support
set shell=/bin/bash
set nowritebackup
set noswapfile
set nobackup
" This is cool - hide buffers instead of closing them
set hidden

""" OTHER SETTINGS
"" Visual / UX settings
set lazyredraw
" use many muchos levels of undo
set undolevels
" Similar muchos for history
set history
" Set the backspace button free
set backspace=indent,eol,start
" change the terminal's title
set title
" don't beep
set visualbell
" don't beep
set noerrorbells
" Turn on line wrapping.
set wrap
" Show 3 lines of context around the cursor.
set scrolloff
" Always display the status line
set laststatus
" use a status bar that is 2 rows high
set cmdheight
" display incomplete commands
set showcmd
" show the cursor position all the time
set ruler
" Line numbers
set number
" Line number width (up to 10,000)
set numberwidth
" do incremental searching
set incsearch
" highlight search terms
set hlsearch
set ignorecase
" ignore case if search pattern is all lowercase,
set smartcase
" search/replace "globally" (on a line) by default
set gdefault
set showmatch
set wildignore=*.swp,*.bak,*.pyc,*.class
set autoindent
" Soft-tabs, 2 spaces
set expandtab
set tabstop=4
" when hitting <BS>, pretend like a tab is removed, even if spaces
set softtabstop
set shiftwidth=4
" copy the previous indentation on autoindenting
set copyindent
" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround
" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab
" make <C-a> and <C-x> play well with non-hex
set nrformats

"" Split settings
" Open new split panes to the bottom
set splitbelow
" and right, which feels more natural
set splitright
set winminheight=0
" reveal already opened files from the quickfix window instead of opening new
" buffers
set switchbuf=useopen
" Don't change dirs, that's stupid
set noautochdir

" Save undos between sessions
set undofile
set undodir=~/.vim/undodir

"" Tab completion settings
set wildmode=list:longest,list:full
set complete=.,w,t
set omnifunc=syntaxcomplete#Complete

"" Invisible chars and such
set list
set listchars=tab:»·,trail:·,extends:#,nbsp:.

"" Syntax-specific indentation on
filetype plugin indent on
