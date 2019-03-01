clean:
	-rm ~/.screenrc

install: clean
	ln -s $$(pwd)/screenrc ~/.screenrc
