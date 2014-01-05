DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

clean:
	-rm ~/.ackrc
	-rm ~/.ctags
	-rm ~/.gitconfig
	-rm ~/.screenrc
	-rm ~/.ssh/rc
	-rm ~/.vim
	-rm ~/.vimrc
	-rm ~/.zsh
	-rm ~/.zshrc

install: clean
	git -C $(DIR) submodule init
	git -C $(DIR) submodule update
	ln -s $(DIR)/ackrc ~/.ackrc
	ln -s $(DIR)/ctags ~/.ctags
	ln -s $(DIR)/gitconfig ~/.gitconfig
	ln -s $(DIR)/screenrc ~/.screenrc
	ln -s $(DIR)/sshrc ~/.ssh/rc
	ln -s $(DIR)/vim/ ~/.vim
	ln -s $(DIR)/vimrc ~/.vimrc
	ln -s $(DIR)/zsh/ ~/.zsh
	ln -s $(DIR)/zshrc ~/.zshrc
	vim +BundleInstall +qall
	vim +GoInstallBinaries +qall
