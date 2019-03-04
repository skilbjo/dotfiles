
function! TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

function! SetupPython() " Here, you can have the final say on what is set.  So
    " fixup any settings you don't like.
    setlocal softtabstop=2
    setlocal tabstop=2
    setlocal shiftwidth=2
:endfunction
command! -bar SetupPython call SetupPython()

" Restore cursor position, window position, and last search after running a
" command.
function! Preserve(command)
  " Save the last search.
  let search = @/

  " Save the current cursor position.
  let cursor_position = getpos('.')

  " Save the current window position.
  normal! H
  let window_position = getpos('.')
  call setpos('.', cursor_position)

  " Execute the command.
  execute a:command

  " Restore the last search.
  let @/ = search

  " Restore the previous window position.
  call setpos('.', window_position)
  normal! zt

  " Restore the previous cursor position.
  call setpos('.', cursor_position)
endfunction

" Re-indent the whole buffer.
function! Indent()
  call Preserve('normal gg=G')
endfunction

" format files based on shebang - #!/usr/bin/env clj is formatted as clojure
function! DetectEnv()
  let tokens = split(getline(1))
  if len(tokens) >= 2
    setfiletype tokens[1]
  endif
endfun

"fu! ResetSpaces()
  "%retab!
"endfunction
