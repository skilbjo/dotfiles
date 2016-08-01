""""""""
" => main
""""""""
nnoremap ; :

""""""""
" => Wordmovement
"""""""
" Arrow keys movement
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

"""""""""
" => Tabs
"""""""""
" Tab Opening/closing
nnoremap <C-t>				:tabnew<CR>
nnoremap <C-w>				:tabclose<CR>

" Working tab navigation
nnoremap <C-[> gT
nnoremap <C-]> gt

" Tab movement but I use this for text movement instead
"nnoremap <C-Left> :tabprevious<CR>
"nnoremap <C-Right> :tabnext<CR>

"map <Esc>[1;9D :tabn<CR>


" Not working tab navigation
" nnoremap <C-S-Tab> :tabprevious<CR>
" nnoremap <C-Tab>   :tabnext<CR>
" inoremap <C-S-Tab> <Esc>:tabprevious<CR>i
" nnoremap <C-Tab>   <Esc>:tabnext<CR>i

