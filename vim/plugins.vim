" NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/Users/$USER/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('/Users/$USER/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Add or remove your Bundles here:
"" Themese
NeoBundle 'vim-airline/vim-airline' 
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'NLKNguyen/papercolor-theme'

"" Utility
NeoBundle 'Shougo/unite.vim'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle	'vim-scripts/AutoComplPop'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat.git'

"" Sublime Text
NeoBundle 'haya14busa/incsearch.vim'
NeoBundle 'haya14busa/incsearch-fuzzy.vim'
NeoBundle 'terryma/vim-multiple-cursors'


"" Lanugage specific
NeoBundle 'guns/vim-clojure-static'
NeoBundle 'tpope/vim-fireplace'
"NeoBundle 'vim-scripts/paredit.vim'

" " Research
" NeoBundle 'flazz/vim-colorschemes'
" NeoBundle 'junegunn/vim-easy-align'
" NeoBundle 'fholgado/minibufexpl.vim'
" NeoBundle 'wincent/command-t'

" Required:
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

