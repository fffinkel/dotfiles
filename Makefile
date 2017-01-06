clean:
	-rm ~/.dzil
	-rm ~/.psqlrc
	-rm ~/.screenrc
	-rm ~/.ratpoisonrc
	-rm ~/.xinitrc
	-rm ~/.Xmodmap

install: clean
	ln -s $$(pwd)/dzil ~/.dzil
	ln -s $$(pwd)/psqlrc ~/.psqlrc
	ln -s $$(pwd)/screenrc ~/.screenrc
	ln -s $$(pwd)/ratpoisonrc ~/.ratpoisonrc
	ln -s $$(pwd)/xinitrc ~/.xinitrc
	ln -s $$(pwd)/Xmodmap ~/.Xmodmap
