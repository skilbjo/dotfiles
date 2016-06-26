# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

export PATH='/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin'

export PS1="\W \$ "

# Alias
alias grep="grep --color=always"
alias st="git status"
alias h="cd ~"
alias br="git branch"
alias df="git diff"
alias pl="git pull"
alias pu="git push"
alias ff="find . -type f -name"
alias fh="find ~ -type f -name"
alias fr="find / -type f -name"
alias search="find . -type f -print0 | xargs -0 grep -i"
alias psqlstart="postgres -D /usr/local/var/postgres/ &"
alias psqlstop="killall postgres"

# Work specific pem keys (place pem keys in ~/.ssh
for file in $(ls ~/.ssh/*.pem); do 
	ssh-add $file > /dev/null 2>&1;
done


