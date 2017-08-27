# Feel free to set these semi-permananently
# DEST = location of /
# MAN  = location of /share/man (Should expand to $DEST$MAN)
DEST=${INSTDEST}
MAN=${MANINST}
CURSES=ncurses

MKSHELL=/bin/mksh
all:
	mk -a sinit
	mk -a smdev
	mk -a ubase
	# mk -a 9base
	mk -a sbase
	mk -a mksh
	mk -a mandoc
	mk -a $CURSES
	mk -a vi
	mk -a strace
	mk -a less
	# mk -a tcc
	# mk -a svc

cleanup:
	(cd sinit     && mk clean)
	(cd smdev     && mk clean)
	(cd ubase     && mk clean)
	# (cd 9base     && mk clean)
	(cd sbase     && mk clean)
	(cd mksh      && mk clean)
	(cd mandoc    && mk clean)
	(cd $CURSES   && mk clean)
	(cd vi        && mk clean)
	(cd strace    && mk clean)
	(cd less      && mk clean)
	# (cd tcc       && mk clean)
	# (cd svc       && mk clean)

%:
	INSTDEST=$DEST cd $stem && mk do

