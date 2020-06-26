" Fn key
function! LoadClojurePlugins()
  NeoBundle 'guns/vim-clojure-static'     " not sure... linter?
  NeoBundle 'tpope/vim-fireplace'         " clojure REPL in vim
  NeoBundle 'tpope/vim-salve'             " clojure quasi-REPL fallback
  NeoBundle 'venantius/vim-cljfmt'        " :cljfmt in vim
  NeoBundle 'venantius/vim-eastwood'      " clojure linter
:endfunction

" Fn key
function! PrettierAsync()
  PrettierAsync
:endfunction

" Fn key
function! TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

" vim autocmd
function! SetupPython()  " Here, you can have the final say on what is set.  So
  setlocal softtabstop=2 " fixup any settings you don't like.
  setlocal tabstop=2
  setlocal shiftwidth=2
:endfunction
command! -bar SetupPython call SetupPython()

function! Preserve(command)           " Restore cursor position, window position, and last search after running a command
  let search = @/                     " Save the last search.

  let cursor_position = getpos('.')   " Save the current cursor position.

  normal! H
  let window_position = getpos('.')   " Save the current window position.
  call setpos('.', cursor_position)

  " Execute the command.
  execute a:command

  let @/ = search                     " Restore the last search.

  call setpos('.', window_position)   " Restore the previous window position.
  normal! zt

  " Restore the previous cursor position.
  call setpos('.', cursor_position)
endfunction

function! Indent()                " Re-indent the whole buffer.
  call Preserve('normal gg=G')
endfunction

function! DetectEnv()             " format files based on shebang, ie:
  let tokens = split(getline(1))  " #!/usr/bin/env clj is formatted as clojure
  if len(tokens) >= 2
    setfiletype tokens[1]
  endif
endfun
