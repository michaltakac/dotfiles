if [ -n "$PS1" ]
then
	source ~/.bash_profile;
	source ~/.rvm/scripts/rvm;
	source ~/.bin/tmuxinator.bash;
else
	[ -r ~/.path ] && [ -f ~/.path ] && source ~/.path;
fi
