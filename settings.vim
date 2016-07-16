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
" nnoremap <M-Left> B
" nnoremap <M-Left> <Left>
" nnoremap <M-Right> <Right>

" Tab navigation like Firefox.
nnoremap <C-t>				:tabnew<CR>
nnoremap <C-w>				:tabclose<CR>
"nnoremap <C-Left> :tabprevious<CR>
"nnoremap <C-Right> :tabnext<CR>

" Not working tab navigation
nnoremap <C-j>		<Esc>:tabp<CR>
nnoremap <C-k>			<Esc>:tabn<CR>
" nnoremap <C-S-Tab> :tabprevious<CR>
" nnoremap <C-Tab>   :tabnext<CR>
" inoremap <C-S-Tab> <Esc>:tabprevious<CR>i
" nnoremap <C-Tab>   <Esc>:tabnext<CR>i

"map <Esc>[1;9D :tabn<CR>

