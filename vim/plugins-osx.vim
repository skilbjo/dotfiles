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
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-eslint',
  \ 'coc-highlight',
  \ 'coc-prettier',
  \ 'coc-html',
  \ 'coc-pyright',
  \ 'coc-rust-analyzer'
  \ ]
" coc-deno seems to conflict with frontend projects, because we don't use deno
" let's disable
" let g:coc_global_extensions = [ 'coc-tsserver', 'coc-json', 'coc-eslint', 'coc-prettier', 'coc-python', 'coc-deno' , 'coc-yaml',   ]

"NeoBundle 'airblade/vim-rooter'

""" Typescript
" NeoBundle 'pangloss/vim-javascript'       " javascript support
" NeoBundle 'leafgarland/typescript-vim'    " typescript syntax
" NeoBundle 'maxmellon/vim-jsx-pretty'      " JS and JSX syntax
" NeoBundle 'prettier/vim-prettier'       " prettier

""" AI
" NeoBundle 'madox2/vim-ai'                " openai needs paid API key
NeoBundle 'Exafunction/codeium.vim'      " codeium
