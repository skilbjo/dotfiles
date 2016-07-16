set ruler title laststatus=2 
set hlsearch
set backspace=2

" Paste mode in vim.. essential!
set pastetoggle=<F10>

" Try to refresh files if edited whilst open
set autoread

" Keyarrows move to next line if @ the end of a line
set whichwrap+=<,>,[,]

" Tab navigation like Firefox.
noremap <C-S-tab> :tabprevious<CR>
noremap <C-tab>   :tabnext<CR>
noremap <C-t>     :tabnew<CR>
nnoremap <C-w> :tabclose<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

" <C-Left>  == B    <S-Left>  == b
" <C-Right> == W    <S-Right> == w

"map <Esc>[1;9D :tabn<CR>

