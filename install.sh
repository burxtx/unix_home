#!/bin/sh
#git clone git@github.com:burxtx/unix_home.git ~/.tianxi


install_file()
{
	src=`pwd`"/"$1
	des="$HOME/$1"
	if [ -e $des ]; then
		mv -f $des $des".bak"
	fi
	rm -f $des
	ln -s $src $des
}

if [ ! -d ~/.ssh ]; then
	mkdir ~/.ssh
	chmod 0700 ~/.ssh
fi

if [ ! -e ~/.bash_local ]; then
	touch ~/.bash_local
	chmod 0644 ~/.bash_local
fi

install_file .customrc
install_file .bashrc
install_file .git-completion.bash
install_file .gitconfig
install_file .ssh/config
install_file .tmux.conf
install_file .vimrc

chmod 0600 ~/.ssh/config

git clone git@github.com:junegunn/vim-plug.git ~/.vim/vim-plug
if [ ! -e $HOME/.vim/autoload ]; then
    mkdir ~/.vim/autoload
fi
cp ~/.vim/vim-plug/plug.vim ~/.vim/autoload
