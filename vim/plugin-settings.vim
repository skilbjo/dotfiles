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
nnoremap <silent><F2>  :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}

" -- Syntastic {{{
""" Turning this off for now, because I'm using w0rp/ale
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_javascript_checkers = ['jshint']"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"  }}}

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
" }}}

" -- vim-cljfmt {{{
let g:clj_fmt_autosave = 0
" }}}

" -- Typescript {{{
" -- vim-prettier {{{
"autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.md PrettierAsync
autocmd VimLeavePre *.js,*.jsx,*.ts,*.tsx,*.md PrettierAsync
" }}}

" -- neoclide-coc {{{
"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? "\<C-n>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"inoremap <expr> <Tab> pumvisible() ? "\<C-Y>" : "\<Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <Tab><Tab> pumvisible() ? "\<C-Y>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

"if exists('*complete_info')
  "inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"else
  "inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"endif

nnoremap <silent> K :call <SID>show_documentation()<CR>

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

autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
"nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

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
