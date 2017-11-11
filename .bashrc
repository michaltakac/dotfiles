if [ -n "$PS1" ]
then
	source ~/.bash_profile;
	source ~/.bin/tmuxinator.bash
else
	[ -r ~/.path ] && [ -f ~/.path ] && source ~/.path;
fi
