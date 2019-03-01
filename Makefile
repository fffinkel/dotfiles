clean:
	-rm ~/.screenrc
	-rm ~/.ssh/rc

install: clean
	ln -s $$(pwd)/screenrc ~/.screenrc
	ln -s $$(pwd)/sshrc ~/.ssh/rc

