" -- general ----------------------------------------------------
scriptencoding utf-8
set encoding=utf-8

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

set updatetime=100

" -- search -----------------------------------------------------
set ignorecase
set smartcase
set gdefault
set incsearch
set hlsearch

" -- window appearance ------------------------------------------
if exists('+colorcolumn')
  set colorcolumn=80   " Show margin
endif

" -- ftplugin - detect syntax -----------------------------------
augroup filetypedetect  " associate *.foo with php filetype
  au BufRead,BufNewFile *.mips setfiletype conf
augroup END

augroup filetypedetect
  au BufRead,BufNewFile *.mips set filetype=conf
augroup END

augroup filetypedetect
  au BufRead,BufNewFile *.clj set filetype=clojure
augroup END

augroup filetypedetect  " associate *.foo with php filetype
  au BufRead,BufNewFile *.vim setfiletype=vim
augroup END

" -- functions on open / close ----------------------------------
" Allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon

" Restore default behaviour when leaving vim
autocmd VimLeave * silent !stty ixon

autocmd BufNewFile,BufRead * call DetectEnv()

autocmd BufWritePre * :call TrimWhiteSpace()
autocmd BufWritePre * :retab

" Indent on save hook
" autocmd BufWritePre <buffer> :call Indent()
