"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2  "always show status line for the last window
"set laststatus=0  "always show status line for the last window

let g:airline_theme='wombat'
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command-T
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:CommandTMatchWindowReverse = 1
let g:CommandTMaxHeight = 20

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyAlign
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <silent><CR>  :EasyAlign<CR>

""""""""""""""""""""
" => EasyMotion
""""""""""""""""""""
map <SPACE> <Plug>(easymotion-bd-w)

""""""""""""""""""""
" => AutoComplPop
""""""""""""""""""""
inoremap <expr> <Tab> pumvisible() ? "\<C-Y>" : "\<Tab>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fireplace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Pretty print last result
nnoremap <Leader>cp :execute "Eval (do (require 'clojure.pprint) (clojure.pprint/pp))"<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Clojure-Static 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:clojure_syntax_keywords = {
    \ 'clojureMacro': ["defproject", "defcustom"],
    \ 'clojureFunc': ["string/join", "string/replace"]
    \ }
" Default
let g:clojure_fuzzy_indent = 1
let g:clojure_fuzzy_indent_patterns = ['^with', '^def', '^let']
let g:clojure_fuzzy_indent_blacklist = ['-fn$', '\v^with-%(meta|out-str|loading-context)$']
let g:clojure_align_subforms = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MiniBufExpl
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplCycleArround = 1
let g:miniBufExplSplitBelow = 0
let g:miniBufExplUseSingleClick = 1
" nnoremap H  :MBEbp<CR>
" nnoremap L  :MBEbn<CR>
" nnoremap ˙  :MBEbb<CR>
" nnoremap ¬  :MBEbf<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeMouseMode = 3
let g:NERDChristmasTree = 1
"Open NerdTREE on current buffer's folder
nnoremap <silent><F3>  :NERDTreeFind<CR>
nnoremap <silent><F4>  :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Unite
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists(':Unite')
  call unite#custom#profile('default', 'context', { 'direction': 'botright' })

  "Use '-' as Unite command
  noremap [Unite]  <NOP>
  map     -        [Unite]

  "File search
  call unite#filters#matcher_default#use(['matcher_fuzzy'])
    "call unite#custom#source('file,file/new,buffer,file_rec',
    "\ 'matchers', 'matcher_fuzzy')
  call unite#filters#sorter_default#use(['sorter_rank'])

  noremap <silent>[Unite]b  :Unite bookmark<CR>
  noremap <silent>[Unite]o  :UniteWithCurrentDir -start-insert file_rec/async:!<CR>

  "Yank list
  let g:unite_source_history_yank_enable = 1
  noremap <silent>[Unite]p  :Unite history/yank<CR>

  "if executable('ag')
    "let g:unite_source_grep_command = 'ag'
    "let g:unite_source_group_default_opts = '-i --no-heading --no-color -k -H'
    "let g:unite_source_grep_recursive_opt = ''
  "endif
endif


