# MKSHELL - Sets the shell that mk uses (see mk(1))
# NAME - The name of the source folder
# URL  - URL of the repository
# DEST - Destination to install the packages. Point it at /
# MAN  - Location of the manual pages. Point it at $DEST/share/man
# FLAGS - Extra flags to pass to the program

MKSHELL=/bin/sh
NAME=
URL=
DEST=${INSTDEST}
MAN=${MANDEST}
FLAGS=

update:V:
	if [[ ! -d $NAME ]]; then git clone $URL; fi
	git -C $NAME pull

install:V:
	PREFIX="" MANPREFIX=$MAN DESTDIR=$DEST make -C $NAME install

uninstall:V:
	PREFIX="" MANPREFIX=$MAN DESTDIR=$DEST make -C $NAME uninstall

clean:V:
	rm -rf $NAME

do:V: update install
