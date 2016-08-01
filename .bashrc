# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

export PATH='/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:~/bin'

export PS1="\W λ "

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

