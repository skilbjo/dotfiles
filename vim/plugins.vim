" NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Add or remove your Bundles here:
"" Themese
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'NLKNguyen/papercolor-theme', { 'rev' : '867b051d3a' }

"" Utility
NeoBundle 'airblade/vim-gitgutter'      " lets you know what changed
NeoBundle 'scrooloose/nerdcommenter'    " quick toggle of comments
NeoBundle 'scrooloose/nerdtree'         " file system explorer
NeoBundle 'scrooloose/syntastic'        " linter framework
NeoBundle 'tpope/vim-fugitive'          " run git commands in vim: :Gblame, etc
NeoBundle 'tpope/vim-repeat.git'        " can use the . command for plugin maps
NeoBundle 'tpope/vim-surround'          " :ysiW to surround word in quotes
NeoBundle 'tpope/vim-obsession'         " save the current state of vim
NeoBundle 'vim-scripts/AutoComplPop'    " autocomplete

"" Lanugage specific
"http://blog.venanti.us/clojure-vim/
"NeoBundle 'vim-scripts/paredit.vim'
NeoBundle 'guns/vim-clojure-static'     " not sure... linter?
NeoBundle 'tpope/vim-fireplace'         " clojure REPL in vim
NeoBundle 'tpope/vim-salve'             " clojure quasi-REPL fallback
NeoBundle 'venantius/vim-cljfmt'        " :cljfmt in vim
NeoBundle 'venantius/vim-eastwood'      " clojure linter

" " Research
" NeoBundle 'fholgado/minibufexpl.vim'
" NeoBundle 'flazz/vim-colorschemes'
" NeoBundle 'junegunn/vim-easy-align'

" Required:
call neobundle#end()

filetype plugin indent on
NeoBundleCheck
