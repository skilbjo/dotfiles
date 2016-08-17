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

au BufRead,BufNewFile *.py set ts=2 sw=2 sts=2 
"set t_Co=256

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

set autowrite

" Allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon

" " Restore default behaviour when leaving Vim.
autocmd VimLeave * silent !stty ixon

set splitbelow
set splitright


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

"if has("vertsplit")
  "" split current window vertically
  "nnoremap <leader>_ <C-w>v<C-w>l
  "set splitright  " when splitting vertically, split to the right
"endif
"if has("windows")
  "" split current window horizontally
  "nnoremap <leader>- <C-w>s
  "set splitbelow  " when splitting horizontally, split below
"endif

"" window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" switch between windows by hitting <Tab> twice
nnoremap <silent> <Tab><Tab> <C-w>w

" create a new tab
nnoremap <silent> <leader>t :tabnew<CR>

 

