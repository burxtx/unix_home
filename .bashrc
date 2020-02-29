# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

if [ -f /etc/skel/.bashrc ]; then
	source /etc/skel/.bashrc
fi

if [ -f $HOME/.customrc ]; then
	source ~/.customrc
fi
