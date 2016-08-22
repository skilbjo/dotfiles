" -- general ----------------------------------------------------
noremap ; :
imap ; <ESC>:
let mapleader = ","
inoremap <leader>; ;
inoremap <leader>: :


" -- wordmovement -----------------------------------------------

" Arrow keys movement <Ctrl>-<Left> , <Ctrl>-<Right> {{{
" http://superuser.com/questions/123937/how-to-jump-to-the-beginning-or-end-of-line-in-vim-os-x ; http://stackoverflow.com/questions/5345612/vim-in-mac-os-x-terminal-move-cursor-word-by-word; http://superuser.com/questions/614553/is-there-any-way-to-go-word-by-word-using-ctrl/614555#614555; http://stackoverflow.com/questions/81272/is-there-any-way-in-the-os-x-terminal-to-move-the-cursor-word-by-word; http://superuser.com/questions/635482/why-does-optionleft-arrow-work-in-vim-but-not-right-arrow-on-mac-os-x; http://apple.stackexchange.com/questions/1626/os-x-terminal-equivalent-of-ctrlleft-ctrlright
map <ESC>[H <Home>
map <ESC>[F <End>
imap <ESC>[H <C-o><Home>
imap <ESC>[F <C-o><End>
cmap <ESC>[H <Home>
cmap <ESC>[F <End>
" }}}

" Option Left = ESC b, Option Right = ESC f {{{
map <ESC>f el
map <ESC>b b
imap <ESC>b <C-o>b
imap <ESC>f <C-o>e
cmap <ESC>f <End>
cmap <ESC>b <Home>
" }}}


" -- tabs / splits ----------------------------------------------

" Tab opening/closing {{{
noremap <C-t>				:tabnew<CR>
nnoremap <C-w>			:tabclose!<CR>
noremap  <C-x>  		:tabclose!<CR>
" }}}

" Tab navigation {{{
"nnoremap <leader>_ gT "nnoremap <leader>+ gt "inoremap <leader>_ <C-o>gT"inoremap <leader>+ <C-o>gt "inoremap _ <ESC>gT "inoremap + <ESC>gt
nnoremap _ gT
nnoremap + gt
inoremap _ <C-o>gT
inoremap + <C-o>gt
" }}}

" Vertical split and move to new window {{{
nnoremap <leader>v <C-W>v<C-W>l
nnoremap <leader>t <C-W>v<C-W>l
" }}}

" Horizontal split and move to new window
nnoremap <leader>h :split<CR><C-W>j

" Easier split navigation {{{ 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-n> <C-W><C-W>
inoremap <C-n> <C-w><C-w>
" }}}

" -- functions --------------------------------------------------
" {{{ 
map <F2> :call TrimWhiteSpace()<CR>
map! <F2> :call TrimWhiteSpace()<CR>
" }}}

" -- Normal-mode mappings ---------------------------------------
" {{{ 
"noremap <C-s> :w<CR> 
nmap <leader>i i
" }}}

" Center the display line after searches. (This makes it *much* easier to see the line {{{
nnoremap n   nzz
nnoremap N   Nzz
" }}}

" -- Insert-mode mappings -------------------------------------
"inoremap <C-s> <Esc>:w<CR>

" Quick save {{{ 
map <leader>s :w<CR>
imap <leader>s <ESC>:w<CR>
map <leader>w :w<CR>
imap <leader>w <ESC>:w<CR>
map <leader>q :q!<CR>
imap <leader>q <ESC>:q!<CR>
map <leader>x :x<CR>
imap <leader>x <ESC>:x<CR>
" }}}

" Insert mode {{{
imap <leader>i <ESC>
" }}}

" Escape characters {{{
inoremap <leader>_ _
inoremap <leader>+ +
" }}}

" -- visual-mode mappings ------------------------------------
" Make shifted cursor keys work to select text {{{
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up> 
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>
"vmap <C-c> y<Esc>i 
"vmap <C-x> d<Esc>i
" }}}

" Ctrl-C for visual block mode inserts {{{
vmap <C-c> <Esc>
" }}}

" Tab in visual (or select) mode indents the selected block (and keeps it selected) {{{
vnoremap <Tab>   >gv
vnoremap <S-Tab> <gv
" }}}

" Backspace in Visual mode deletes selection {{{
vnoremap <BS> d
" }}}

" Control+S saves the current file (if it's been changed). Not working. {{{
noremap  <C-S>  :update<CR>
vnoremap <C-S>  <C-C>:update<CR>
inoremap <C-S>  <C-o>:update<CR>
noremap  <C-q>  :quit<CR>
vnoremap <C-q>  <C-C>:quit<CR>
inoremap <C-q>  <C-o>:quit<CR>
noremap  <C-x>  :exit<CR>
vnoremap <C-x>  <C-C>:exit<CR>
inoremap <C-x>  <C-o>:exit<CR>
" }}}

" Control+Z is Undo, in Normal and Insert mode. {{{
noremap  <C-Z>  u
inoremap <C-Z>  <C-O>u
" }}}

" Control+A is select all {{{
noremap  <C-A>  gggH<C-O>G
inoremap <C-A>  <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A>  <C-C>gggH<C-O>G
onoremap <C-A>  <C-C>gggH<C-O>G
snoremap <C-A>  <C-C>gggH<C-O>G
xnoremap <C-A>  <C-C>ggVG
" }}}


