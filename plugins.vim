
"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/Users/john.skilbeck/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/john.skilbeck/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
" " Vim Bundles
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'https://github.com/easymotion/vim-easymotion'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'https://github.com/scrooloose/nerdtree'


"" Clojure Bundles
NeoBundle 'https://github.com/guns/vim-clojure-static'
NeoBundle 'https://github.com/tpope/vim-fireplace'


" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
