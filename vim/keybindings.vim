" -- general ----------------------------------------------------

"nnoremap ; :
noremap ; :
imap ; <ESC>:

let mapleader = ","


" -- wordmovement -----------------------------------------------

" Arrow keys movement
"nnoremap <Left> h
"nnoremap <Right> l
"nnoremap <Up> k
"nnoremap <Down> j
"inoremap <up> k
"inoremap <down> j
"inoremap <left> h
"inoremap <right> l
" http://superuser.com/questions/123937/how-to-jump-to-the-beginning-or-end-of-line-in-vim-os-x
" http://stackoverflow.com/questions/5345612/vim-in-mac-os-x-terminal-move-cursor-word-by-word
" http://superuser.com/questions/614553/is-there-any-way-to-go-word-by-word-using-ctrl/614555#614555
" http://stackoverflow.com/questions/81272/is-there-any-way-in-the-os-x-terminal-to-move-the-cursor-word-by-word
" http://superuser.com/questions/635482/why-does-optionleft-arrow-work-in-vim-but-not-right-arrow-on-mac-os-x
" http://apple.stackexchange.com/questions/1626/os-x-terminal-equivalent-of-ctrlleft-ctrlright
" <Ctrl>-<Left> , <Ctrl>-<Right>
map <ESC>[H <Home>
map <ESC>[F <End>
imap <ESC>[H <C-o><Home>
imap <ESC>[F <C-o><End>
cmap <ESC>[H <Home>
cmap <ESC>[F <End>

" Option Left = ESC b, Option Right = ESC f
map <ESC>f el
map <ESC>b b
imap <ESC>b <C-o>b
imap <ESC>f <C-o>e
cmap <ESC>f <End>
cmap <ESC>b <Home>

"map <Esc>b B
"map <Esc>f W
"map <M-Left> [1;5D
"map <M-Right> [1;5C

" -- tabs -------------------------------------------------------

" Tab Opening/closing
nnoremap <C-t>				:tabnew<CR>
nnoremap <C-w>				:tabclose!<CR>

" Working tab navigation
nnoremap _ gT
nnoremap + gt
"nnoremap <leader>_ gT
"nnoremap <leader>+ gt

"inoremap _ <ESC>gT
"inoremap + <ESC>gt
inoremap _ <C-o>gT
inoremap + <C-o>gt
"inoremap <leader>_ <C-o>gT
"inoremap <leader>+ <C-o>gt

" -- splits -----------------------------------------------------

" Vertical split and move to new window
"nnoremap <leader>v <C-W>v<C-W>l

" Horizontal split and move to new window
"nnoremap <leader>h :split<CR><C-W>j

" Easier split navigation
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

" -- functions --------------------------------------------------
map <F2> :call TrimWhiteSpace()<CR>
map! <F2> :call TrimWhiteSpace()<CR>


" -- normal-mode mappings ---------------------------------------
noremap <C-s> :w<CR> 


" -- insert-mode mappings -------------------------------------
inoremap <C-s> <Esc>:w<CR>

" quick save
map <leader>s :w<CR>
imap <leader>s <ESC>:w<CR>
map <leader>q :q!<CR>
imap <leader>q <ESC>:q!<CR>
map <leader>x :x<CR>
imap <leader>x <ESC>:x<CR>


" -- visual-mode mappings 20i------------------------------------
" Make shifted cursor keys work, to select text.
nmap <S-Up>    v<Up>
nmap <S-Down>  v<Down>
nmap <S-Left>  v<Left>
nmap <S-Right> v<Right>
nmap <S-Home>  v<Home>
nmap <S-End>   v<End>
vmap <S-Up>    <Up>
vmap <S-Down>  <Down>
vmap <S-Left>  <Left>
vmap <S-Right> <Right>
vmap <S-Home>  <Home>
vmap <S-End>   <End>

" Handle Control+Shift cursors keys. Not working
"nmap <C-S-Right> vE
"vmap <C-S-Right> E
"nmap <C-S-Left>  lvB
"vmap <C-S-Left>  B

" Tab in visual (or select) mode indents the selected block (and keeps it selected).
vnoremap <Tab>   >gv
vnoremap <S-Tab> <gv

" Backspace in Visual mode deletes selection.
vnoremap <BS> d

" Control+S saves the current file (if it's been changed). Not working.
"noremap  <C-S>  :update<CR>
"vnoremap <C-S>  <C-C>:update<CR>
"inoremap <C-S>  <C-O>:update<CR>

" Control+Z is Undo, in Normal and Insert mode.
noremap  <C-Z>  u
inoremap <C-Z>  <C-O>u

" Control+A is Select All.
noremap  <C-A>  gggH<C-O>G
inoremap <C-A>  <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A>  <C-C>gggH<C-O>G
onoremap <C-A>  <C-C>gggH<C-O>G
snoremap <C-A>  <C-C>gggH<C-O>G
xnoremap <C-A>  <C-C>ggVG

" Center the display line after searches. (This makes it *much* easier to see
" the matched line.)
" More info: http://www.vim.org/tips/tip.php?tip_id=528
nnoremap n   nzz
nnoremap N   Nzz


