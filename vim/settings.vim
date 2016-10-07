" -- general ----------------------------------------------------

syntax on
set ruler title laststatus=2
set backspace=2
set list
set listchars=tab:▸\ ,eol:¬,nbsp:⋅,trail:•
set pastetoggle=<F10>
set autoread
set encoding=utf-8
set showmatch

set wildmenu                    " enable tab completion menu
set wildmode=longest:full,full  " complete till longest common string, then full
set wildignore+=.git            " ignore the .git directory
set wildignore+=*.DS_Store      " ignore Mac finder/spotlight crap

if has('mouse')
  set mouse=a
  set ttymouse=xterm2
endif

set nocompatible

set clipboard=unnamed

set ttyfast
set lazyredraw

set noswapfile
set nobackup
set nowb

set splitbelow
set splitright

set autowrite
set autoindent

" -- search -----------------------------------------------------
set ignorecase
set smartcase
set gdefault
set incsearch
set hlsearch

" -- window size ------------------------------------------------
" set winheight=5
" set winheight=999
" set winminheight=5


" -- functions on open / close ----------------------------------
" Allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon
" Restore default behaviour when leaving Vim.
autocmd VimLeave * silent !stty ixon

autocmd BufWritePre * :call TrimWhiteSpace()
autocmd BufWritePre * :retab()

