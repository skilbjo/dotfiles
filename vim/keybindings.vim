" -- general ----------------------------------------------------

nnoremap ; :

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

map <ESC>[H <Home>
map <ESC>[F <End>
imap <ESC>[H <C-O><Home>
imap <ESC>[F <C-O><End>
cmap <ESC>[H <Home>
cmap <ESC>[F <End>
map <ESC>f el
imap <ESC>b <C-o>b
imap <ESC>f <C-o>el
cmap <ESC>f el

"map <Esc>b B
"map <Esc>f W
"map <M-Left> [1;5D
"map <M-Right> [1;5C

" -- tabs -------------------------------------------------------

" Tab Opening/closing
nnoremap <C-t>				:tabnew<CR>
nnoremap <C-w>				:tabclose<CR>

" Working tab navigation
nnoremap <C-[> gT
nnoremap <C-]> gt

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


