" -- Themes -----------------------------------------------------
" -- Airline {{{
set laststatus=2  "always show status line for the last window
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#enabled=1
let g:Powerline_symbols = 'unicode'
"let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"" unicode symbols
"let g:airline_left_sep=''
"let g:airline_right_sep=''
"let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
"let g:airline_symbols.space = "\ua0"
""}}}

" -- PaperColor
set background=light
let g:PaperColor_Light_Override = { 'background' : '#ffffff' }
colorscheme PaperColor

" -- Utility -----------------------------------------------------
" -- Command-T {{{
let g:CommandTMatchWindowReverse = 1
let g:CommandTMaxHeight = 20
" }}}

" -- EasyAlign
vnoremap <silent><CR>  :EasyAlign<CR>
" }}}

" -- EasyMotion {{{
map <SPACE> <Plug>(easymotion-bd-w)
" }}}

" -- NERDTree {{{
let g:NERDTreeMouseMode = 3
let g:NERDChristmasTree = 1
"Open NerdTREE on current buffer's folder
"nnoremap <silent><F3>  :NERDTreeFind<CR>
nnoremap <silent><F1>  :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}

" -- NerdTREE Comment {{{
map ÷ <Leader>c<Space>
imap ÷  <C-o>:call NERDComment(0,"toggle")<C-m>
" }}}

" -- Syntastic {{{
let g:syntastic_javascript_checkers = ['jshint']"
"  }}}


" -- Sublime Text -----------------------------------------------
" -- AutoComplPop {{{
inoremap <expr> <Tab> pumvisible() ? "\<C-Y>" : "\<Tab>"
" }}}

" -- IncSearch {{{
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-fuzzy-/)
" }}}

" -- Multicursor {{{
let g:multicursorusedefaultmapping=0
let g:multi_cursor_next_key='<C-f>'
let g:multi_cursor_prev_key='<C-g>'
"let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
" }}}


" -- Language Spesific -----------------------------------------------
" -- vim-Fireplace {{{
nnoremap <Leader>cp :execute "Eval (do (require 'clojure.pprint) (clojure.pprint/pp))"<cr>
" Below is for dock of function
nmap ˚ [d
" Below is for source of function
nmap ¬ [d
" Brings up a quasi-repl
nmap … cqq
" Evaluates code block
nmap æ cpp
" }}}

" -- Clojure-static {{{
let g:clojure_syntax_keywords = {
    \ 'clojureMacro': ["defproject", "defcustom"],
    \ 'clojureFunc': ["string/join", "string/replace"]
    \ }
" Default
let g:clojure_fuzzy_indent = 1
let g:clojure_fuzzy_indent_patterns = ['^with', '^def', '^let']
let g:clojure_fuzzy_indent_blacklist = ['-fn$', '\v^with-%(meta|out-str|loading-context)$']
let g:clojure_align_subforms = 0
let g:clojure_align_multiline_strings = 1
" }}}

" -- Minibufexp {{{
"let g:miniBufExplCycleArround = 1
"let g:miniBufExplSplitBelow = 0
"let g:miniBufExplUseSingleClick = 1
" }}}


