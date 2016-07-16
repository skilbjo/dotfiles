set ruler title laststatus=2 
set hlsearch
set backspace=2

" Paste mode in vim.. essential!
set pastetoggle=<F10>

" Try to refresh files if edited whilst open
set autoread

" Keyarrows move to next line if @ the end of a line
set whichwrap+=<,>,[,]

" Arrow keys movement
map <Esc>b B
map <Esc>f W

" Tab Opening/closing
nnoremap <C-t>				:tabnew<CR>
nnoremap <C-w>				:tabclose<CR>

" Working tab navigation
nnoremap <C-j> gT
nnoremap <C-k> gt

" Not working tab navigation
" nnoremap <C-S-Tab> :tabprevious<CR>
" nnoremap <C-Tab>   :tabnext<CR>
" inoremap <C-S-Tab> <Esc>:tabprevious<CR>i
" nnoremap <C-Tab>   <Esc>:tabnext<CR>i

" Tab movement but I use this for text movement instead
"nnoremap <C-Left> :tabprevious<CR>
"nnoremap <C-Right> :tabnext<CR>

"map <Esc>[1;9D :tabn<CR>

