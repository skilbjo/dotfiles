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
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'vim-airline/vim-airline' 
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'NLKNguyen/papercolor-theme'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'scrooloose/nerdtree'
NeoBundle	'vim-scripts/AutoComplPop'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'guns/vim-clojure-static'
NeoBundle 'tpope/vim-fireplace'

" " Research
NeoBundle 'haya14busa/incsearch.vim'
NeoBundle 'haya14busa/incsearch-fuzzy.vim'
" NeoBundle 'flazz/vim-colorschemes'
" NeoBundle 'ctrlpvim/ctrlp.vim'
" NeoBundle 'junegunn/vim-easy-align'
" NeoBundle 'fholgado/minibufexpl.vim'
" NeoBundle 'wincent/command-t'

" Required:
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

