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
set t_Co=256                      " only needed for vim in docker
set background=light
let g:PaperColor_Light_Override = { 'background' : '#ffffff' }
colorscheme PaperColor

" -- Utility -----------------------------------------------------
" -- NerdTREE Comment {{{
map ÷ <Leader>c<Space>
imap ÷  <C-o>:call NERDComment(0,"toggle")<C-m>
" }}}

" -- NERDTree {{{
let g:NERDTreeMouseMode = 3
let g:NERDChristmasTree = 1
"Open NerdTREE on current buffer's folder
"nnoremap <silent><F3>  :NERDTreeFind<CR>
nnoremap <silent><F1>  :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}

" -- Syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['jshint']"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"  }}}

" -- AutoComplPop {{{
inoremap <expr> <Tab> pumvisible() ? "\<C-Y>" : "\<Tab>"
" }}}

" -- EasyMotion {{{
"map <SPACE> <Plug>(easymotion-bd-w)
" }}}

" -- Language Spesific -----------------------------------------------
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

" -- vim-cljfmt {{{
let g:clj_fmt_autosave = 0
" }}}

" -- Typescript {{{
" -- vim-prettier {{{
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.md PrettierAsync
" }}}

" -- Research -------- -----------------------------------------------
" -- EasyAlign
"vnoremap <silent><CR>  :EasyAlign<CR>
" }}}

" -- Minibufexp {{{
"let g:miniBufExplCycleArround = 1
"let g:miniBufExplSplitBelow = 0
"let g:miniBufExplUseSingleClick = 1
" }}}
