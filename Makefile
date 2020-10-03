clean:
	-rm ~/.ackrc
	-rm ~/.screenrc
	-rm ~/.ssh/rc

install: clean
	ln -s ~/cnf/dotfiles/ackrc ~/.ackrc
	ln -s ~/cnf/dotfiles/screenrc ~/.screenrc
	ln -s ~/cnf/dotfiles/sshrc ~/.ssh/rc
	ln -s ~/cnf/dotfiles/ctags ~/.ctags

