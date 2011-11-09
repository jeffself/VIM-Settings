" This is my .vimrc settings file

" Basics
    set nocompatible  " explicitly get out of vi-compatible mode
    set background=dark " use a dark background
    syntax on  "enable syntax highlighting

" General
    set autochdir  " always switch to the current file directory
    set backspace=indent,eol,start  " make backspace a more flexible
    "set backup  " make backup files
    "set backupdir=~/.vim/backup  " where to put backup files
    set nobackup  "do not keep a backup
    set clipboard+=unnamed  " share windows clipboard
    set directory=~/.vim/tmp  " directory to place swap files in
    set fileformats=unix,dos,mac  "support all three, in this order
    set hidden  " you can change buffers without saving
    set iskeyword+=_,$,@,%,#  " none of these are word dividers
    set mouse=a  " use mouse everywhere
    set noerrorbells  " don't make noise
    set whichwrap=b,s,h,l,<,>,~,[,]  " everything wraps
    set wildmenu  " turn on command line completion wild style
    set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,\*.jpg,*.gif,*.png
    set wildmode=list:longest  "turn on wild mode huge list

" Vim UI
    set cmdheight=2  " sets the command height to 2
    set incsearch  " BUT do highlight as you type your search phrase
    set laststatus=2  " always show the status line
    set lazyredraw  "do not redraw while running macros
    set linespace=0  " don't insert any extra pixel lines between rows
    set list  " we do this to show tabs
    set listchars=tab:>-,trail:-  " show tabs and trailing
    set matchtime=5  "how many tenths of a second to blink matching brackets
    set nohlsearch  " do not highlight searched for phrases
    set nostartofline  "leave my cursor where it was
    set novisualbell  " don't blink
    set number  " turn on line numbers
    set numberwidth=5  " We are good up to 9999 lines
    set report=0  " tell us when anything is changed
    set ruler  " Always show current positions along bottom
    set scrolloff=10  "Keep 10 lines for scope
    set shortmess=aOstT  " shortens message to avoid 'press a key' prompt
    set showcmd  "show the command being typed
    set showmatch  " show matching brackets
    set sidescrolloff=10  " Keep 5 lines at the size
    set title  " show title in console title bar
"set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%041,%04v]

" Colors and Fonts
    syntax enable "Enable syntax hl
    if has("unix")
        let s:uname = system("uname")
        if s:uname == "Darwin\n"
            set gfn=Menlo:h16
        else
            set gfn=Monospace\ 12
        endif
    endif
    set shell=/bin/bash

    if has("gui_running")
        set guioptions-=T
        set t_Co=256
        set background=dark  " adapt colors for background
        colorscheme peaksea
    else
        colorscheme elflord  "use this color scheme
        set background=dark  " adapt colors for background

    endif


" Text Formatting/Layout

    set completeopt=  " don't use a pop up menu for completions
    set expandtab  " don't use real tabs
    set ignorecase  " ignore case by default
    set infercase  " case inferred by default
    set nowrap  " do not wrap lines
    set shiftround  " when at 3 spaces, and I hit > ... go to 4, not 5
    set smartcase  " if there are caps, go case-sensitive
    set shiftwidth=4  " auto-indent
    set softtabstop=4  " when hitting tab or backspace, go this many spaces
    set tabstop=8  "set real tab stop to 8


" Ruby
au BufRead,BufNewFile *.rb,*.rhtml set shiftwidth=2
au BufRead,BufNewFile *.rb,*.rhtml set softtabstop=2
