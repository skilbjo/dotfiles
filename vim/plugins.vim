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
"" Themes
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'NLKNguyen/papercolor-theme', { 'rev' : '867b051d3a' }

"" Utility
NeoBundle 'airblade/vim-gitgutter'       " lets you know what changed
NeoBundle 'junegunn/vim-easy-align'      " easy align (= and let). visual select then: ga and = or : (what you align around)
NeoBundle 'scrooloose/nerdcommenter'     " quick toggle of comments
NeoBundle 'scrooloose/nerdtree'          " file system explorer
NeoBundle 'tpope/vim-repeat.git'         " can use the . command for plugin maps
NeoBundle 'tpope/vim-surround'           " :ysiW to surround word in quotes
NeoBundle 'tpope/vim-fugitive'           " run git commands in vim: :Gblame, etc
"NeoBundle 'vim-scripts/AutoComplPop'    " autocomplete
NeoBundle 'kien/ctrlp.vim'               " fuzzy file finder

"" Lanugage specific
""" Clojure
"http://blog.venanti.us/clojure-vim/
"NeoBundle 'vim-scripts/paredit.vim'
"NeoBundle 'guns/vim-clojure-static'     " not sure... linter?
"NeoBundle 'tpope/vim-fireplace'         " clojure REPL in vim
"NeoBundle 'tpope/vim-salve'             " clojure quasi-REPL fallback
"NeoBundle 'venantius/vim-cljfmt'        " :cljfmt in vim
"NeoBundle 'venantius/vim-eastwood'      " clojure linter

""" Typescript, but only if on macOS
if has('macunix')
  execute 'source '.vim_dir.'/plugins-osx.vim'
endif

" " Decided not to use, for now
"NeoBundle 'mhinz/vim-signify'           " superior git gutter

" " Research
" NeoBundle 'metakirby5/codi.vim'       " quasi-repl, evaluates your code

" Required:
call neobundle#end()

filetype plugin indent on
"NeoBundleCheck
