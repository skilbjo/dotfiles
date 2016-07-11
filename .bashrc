# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

export PATH='/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin'

export PS1="\W λ "

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
alias psql-start="postgres -D /usr/local/var/postgres/ &"
alias psql-stop="killall postgres"

# Work specific pem keys (place pem keys in ~/.ssh
work() {
	for file in $(ls ~/.ssh/*.pem); do 
		ssh-add $file > /dev/null 2>&1;
	done

	eval "$(docker-machine env default)"
}

computer_specific() {
	case $(whoami) in
		('john.skilbeck') work;;
		(skilbjo) ;; 
	esac
	#if [ $(whoami) = 'john.skilbeck' ]; then #fi
}

computer_specific

