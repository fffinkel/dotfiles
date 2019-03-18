clean:
	-rm ~/.ackrc
	-rm ~/.screenrc
	-rm ~/.ssh/rc

install: clean
	ln -s $$(pwd)/ackrc ~/.ackrc
	ln -s $$(pwd)/screenrc ~/.screenrc
	ln -s $$(pwd)/sshrc ~/.ssh/rc

