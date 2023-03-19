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
NeoBundle 'neoclide/coc.nvim', {'branch': 'release'}           " code completion
let g:coc_global_extensions = [ 'coc-tsserver', 'coc-json', 'coc-eslint', 'coc-yaml', 'coc-highlight', 'coc-prettier', 'coc-deno' ]
" let g:coc_global_extensions = [ 'coc-tsserver', 'coc-json', 'coc-eslint', 'coc-prettier', 'coc-python' ]

"NeoBundle 'airblade/vim-rooter'

""" Typescript
" NeoBundle 'pangloss/vim-javascript'       " javascript support
" NeoBundle 'leafgarland/typescript-vim'    " typescript syntax
" NeoBundle 'maxmellon/vim-jsx-pretty'      " JS and JSX syntax
" NeoBundle 'prettier/vim-prettier'       " prettier
