" Here, you can set the setting directly, or call a command or function
" to help you.  We'll call a command, and then implement that command in
" your top-level vimrc to help keep things in one place.
"autocmd BufWritePre <buffer> call Indent()

SetupPython
nnoremap <silent> K :call <SID>show_documentation()<CR>
