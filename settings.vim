""""
" => General
""""""""

set ruler title laststatus=2 
set hlsearch
set backspace=2
set listchars=tab:▸\ ,eol:¬

" Paste mode in vim.. essential!
set pastetoggle=<F10>

" Try to refresh files if edited whilst open
set autoread

" Keyarrows move to next line if @ the end of a line
" set whichwrap+=<,>,[,]

if has('mouse')
	set mouse=a
	set ttymouse=xterm2
endif

set clipboard=unnamed

set ttyfast 

