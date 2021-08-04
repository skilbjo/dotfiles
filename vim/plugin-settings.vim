" -- Themes -----------------------------------------------------
" -- Airline {{{
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#fnamecollapse = 0
let g:Powerline_symbols = 'unicode'
" let g:airline_section_c = '+%F' " shows full file path but also gets rid of coc
" let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
"let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

"" unicode symbols
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.whitespace = 'Ξ'
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
let NERDSpaceDelims=1
" }}}

" -- NERDTree {{{
let g:NERDTreeMouseMode = 3
let g:NERDChristmasTree = 1
"Open NerdTREE on current buffer's folder
nnoremap <silent><F2>  :NERDTreeFind<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}

" -- AutoComplPop {{{                 " this conflicts with neoclide-coc
"inoremap <expr> <Tab> pumvisible() ? "\<C-Y>" : "\<Tab>"
" }}}

" -- EasyMotion {{{
"map <SPACE> <Plug>(easymotion-bd-w)
" }}}

" -- EasyMotion {{{
" " Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}}

" -- EasyMotion {{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|.DS_Store)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)|dist|node_modules$',
  \ 'file': '\v\.(exe|so|dll|.DS_Store)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
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
" Below is for documentation of function... ˚ is option + k
nmap ˚ [d
" Below is for source of function... ¬ is option + l (L)
nmap ¬ [d
 "Brings up a quasi-repl... ® is option + r (repl)
nmap ® cqq
 "Evaluates code block... æ is option + quote '
nmap æ cpp

nmap <leader>F <Plug>FireplacePrint<Plug>(sexp_outer_top_list)``
nmap <leader>f <Plug>FireplacePrint<Plug>(sexp_outer_list)``
nmap <leader>e <Plug>FireplacePrint<Plug>(sexp_inner_element)``
nmap <leader>d [<C-D>
nmap <leader>E :%Eval<CR>
nmap <leader>R cqp(require 'clojure.tools.namespace.repl) (clojure.tools.namespace.repl/refresh)<CR>
" }}}

  " -- vim-cljfmt {{{
  let g:clj_fmt_autosave = 0
  " }}}

" -- Typescript {{{
" -- vim-prettier {{{
" }}}

" -- neoclide-coc {{{
" let g:coc_global_extensions = [ 'coc-tsserver', 'coc-json', 'coc-eslint', 'coc-prettier', 'coc-python' ]

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> gc  <Plug>(coc-codeaction)
nmap <silent> gf  <Plug>(coc-fix-current)

"inoremap <expr><Tab> pumvisible() ? "\<C-Y>" : "\<Tab>"      # if you want to tab to select it (my old behavior)
inoremap <expr><C-@> pumvisible() ? "\<C-Y>" : "\<Tab>"       " <C-space> interpreted as <C-@> by vim
inoremap <expr><leader><Tab> pumvisible() ? "\<C-Y>" : "\<Tab>"  " tab to select it
inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr><CR> pumvisible() ? "\<C-Y>" : "\<CR>"

"if exists('*complete_info')
  "inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"else
  "inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"endif

" augroup typescriptLint  # only for projects on tslint
  " autocmd FileType typescript,typescriptreact
    " \ autocmd! BufWritePre * :CocCommand tslint.executeAutoFix
" augroup END

" plugin specific fns; these cannot be put in functions.vim
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
autocmd FileType javascript,typescript,typescriptreact,javascriptreact nnoremap <silent> K :call <SID>show_documentation()<CR>

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-@> coc#refresh()

autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

"augroup mygroup
  "autocmd!
  "" Setup formatexpr specified filetype(s).
  "autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  "" Update signature help on jump placeholder.
  "autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end
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
