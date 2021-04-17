" -- general ----------------------------------------------------
noremap ;             :
imap ;                 <ESC>:
let mapleader =       ","
let maplocalleader =  "-"

" Escape characters {{{
inoremap <leader>~    `
inoremap <leader>1    `
inoremap …            ;
inoremap Ú            :
nnoremap <Bslash>     ;
nnoremap \|           ,
" }}}

" -- wordmovement -----------------------------------------------
" Option Left = ESC b, Option Right = ESC f {{{
map <ESC>f            el
map <ESC>b            b
imap <ESC>b           <C-o>b
imap <ESC>f           <C-o>e
cmap <ESC>f           <End>
cmap <ESC>b           <Home>
" }}}

" Nativation
map 1           $
map 2           ^
"map 2           $
map 9           ^
"map 3           ^

" -- tabs / splits ----------------------------------------------
" Tab opening/closing {{{
noremap <C-t>         :tabnew<CR>
" nnoremap <C-w>        :tabclose!<CR>
noremap  <C-x>        :tabclose!<CR>
" }}}

" Tab navigation {{{
nnoremap –            gT
nnoremap ≠            gt
inoremap –            <C-o>gT
inoremap ≠            <C-o>gt
" }}}

" Vertical split and move to new window {{{
nnoremap <leader>t    <C-W>v<C-W>l
" create a new tab
"nnoremap <silent> <leader>t :tabnew<CR>
" }}}

" Horizontal split and move to new window
nnoremap <leader>h    :split<CR><C-W>j

" Easier split navigation {{{
nnoremap <C-n>        <C-W><C-W>
inoremap <C-n>        <C-w><C-w>
" }}}

" -- functions --------------------------------------------------
" {{{
"<F2 is NERDTree
nnoremap <silent><F1>  :NERDTreeToggle<CR>
map  <F3>             :call LoadClojurePlugins()<CR>
map! <F3>             :call LoadClojurePlugins()<CR>
map  <F9>             :noh<return><esc>
map! <F9>             :noh<return><esc>
"<F10 is nopaste - FYI only
" }}}

" -- Normal-mode mappings ---------------------------------------

" Center the display line after searches. (This makes it *much* easier to see the line {{{
nnoremap n            nzz
nnoremap N            Nzz
" }}}

" -- All-mode mappings -------------------------------------

" Quick save {{{
map <leader>s         :w<CR>
imap <leader>s        <ESC>:w<CR>
map <leader>w         :w<CR>
imap <leader>w        <ESC>:w<CR>
map <leader>q         :q!<CR>
imap <leader>q        <ESC>:q!<CR>
map <leader>x         :x<CR>
imap <leader>x        <ESC>:x<CR>
" }}}

" Insert mode {{{
imap <leader>i        <ESC>
" }}}

" Control+Z is Undo, in Normal and Insert mode. {{{
noremap  <C-Z>        u
inoremap <C-Z>        <C-O>u
" }}}

" Control+A is select all {{{
noremap  <C-A>        ggVG
inoremap <C-A>        <ESC>ggVG
cnoremap <C-A>        <C-C>gggH<C-O>G
onoremap <C-A>        <C-C>gggH<C-O>G
snoremap <C-A>        <C-C>gggH<C-O>G
xnoremap <C-A>        <C-C>ggVG
" }}}

" . (dot) command replays a macro {{{
" nmap <expr> q QStart()
" }}}

" -- visual-mode mappings ------------------------------------

" Make shifted cursor keys work to select text {{{
nmap <S-Up>           <Esc>V<Up>
nmap <S-Down>         V<Down>
nmap <S-Left>         V<Left>
nmap <S-Right>        V<Right>
vmap <S-Up>           <Up>
vmap <S-Down>         <Down>
vmap <S-Left>         <Left>
vmap <S-Right>        <Right>
imap <S-Up>           <Esc>v<Up>
imap <S-Down>         <Esc>v<Down>
imap <S-Left>         <Esc>v<Left>
imap <S-Right>        <Esc>v<Right>
" }}}

" Ctrl-C for visual block mode inserts {{{
vmap <C-c>            <Esc>
" }}}

" Tab in visual (or select) mode indents the selected block (and keeps it selected) {{{
vnoremap <Tab>        >gv
vnoremap <S-Tab>      <gv
" }}}

" Backspace in Visual mode deletes selection {{{
vnoremap <BS>         d
" }}}

" Control+S saves     the current file (if it's been changed). Not working. {{{
noremap  <C-S>        :update<CR>
vnoremap <C-S>        <C-C>:update<CR>
inoremap <C-S>        <C-o>:update<CR>
noremap  <C-x>        :exit<CR>
vnoremap <C-x>        <C-C>:exit<CR>
inoremap <C-x>        <C-o>:exit<CR>
" }}}

" Control+G shows fillpath {{{
noremap  <C-g>        :echo expand('%:p')<CR>
vnoremap <C-g>        <Esc>:echo expand('%:p')<CR>
inoremap <C-g>        <Esc>:echo expand('%:p')<CR>
" }}}

" -- command-mode mappings ------------------------------------
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
