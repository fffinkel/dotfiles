clean:
	-rm ~/.dzil
	-rm ~/.screenrc

install: clean
	ln -s $$(pwd)/dzil ~/.dzil
	ln -s $$(pwd)/screenrc ~/.screenrc
