
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

function! SetupPython() " Here, you can have the final say on what is set.  So
    " fixup any settings you don't like.
    setlocal softtabstop=2
    setlocal tabstop=2
    setlocal shiftwidth=2
:endfunction
"command! -bar SetupPython call SetupPython()
