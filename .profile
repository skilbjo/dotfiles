
if [ -f ~/.bashrc ]; then 
    source ~/.bashrc 
fi

export EDITOR=vim

# colors for OSX
di=ex   # Directory
ln=dx   # Symbolic Link
so=dx   # Socket
pi=hx   # Pipe
ex=cx   # Executable
bd=hx   # Block (buffered) special file
cf=hx   # Character (unbuffered) special file
eu=hx   # Executable with setuid bit set
eg=hx   # Executable with setgid bit set
ds=hx   # Director writable to others, with sticky bit
dw=hx   # Director writable to others, without sticky bit
export LSCOLORS="$di$ln$so$pi$ex$bd$cf$eu$eg$ds$dw"



