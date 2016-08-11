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
nnoremap <C-w>				:tabclose<CR>

" Working tab navigation
nnoremap _ gT
nnoremap + gt

"inoremap _ <ESC>gT
"inoremap + <ESC>gt
inoremap _ <C-o>gT
inoremap + <C-o>gt

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
"nnoremap <C-s> :w<CR>


