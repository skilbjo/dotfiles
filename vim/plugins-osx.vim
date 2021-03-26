"" Lanugage specific
""" Clojure
"http://blog.venanti.us/clojure-vim/
"NeoBundle 'guns/vim-clojure-static'     " not sure... linter?
"NeoBundle 'tpope/vim-fireplace'         " clojure REPL in vim
"NeoBundle 'tpope/vim-salve'             " clojure quasi-REPL fallback
"NeoBundle 'venantius/vim-cljfmt'        " :cljfmt in vim
"NeoBundle 'venantius/vim-eastwood'      " clojure linter

""" Typescript
""""" But only if on macOS
NeoBundle 'neoclide/coc.nvim', { 'branch' : 'release' }           " code completion
NeoBundle 'neoclide/coc-tsserver'       " typescript server
NeoBundle 'neoclide/coc-eslint'         " javascript linter
NeoBundle 'neoclide/coc-prettier'       " not as good as eslint, but some projects use this
" NeoBundle 'neoclide/coc-json'           " stuff

"NeoBundle 'airblade/vim-rooter'

""" Typescript
" NeoBundle 'pangloss/vim-javascript'       " javascript support
" NeoBundle 'leafgarland/typescript-vim'    " typescript syntax
" NeoBundle 'maxmellon/vim-jsx-pretty'      " JS and JSX syntax
" NeoBundle 'prettier/vim-prettier'       " prettier

" """ Python
NeoBundle 'neoclide/coc-python'         " python server
