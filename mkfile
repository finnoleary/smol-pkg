# Feel free to set these semi-permananently
# DEST = location of /
# MAN  = location of /share/man (Should expand to $DEST$MAN)
DEST=$INSTDEST
MAN=$MANINST

MKSHELL=/bin/mksh
all:
	mk -a sinit
	mk -a smdev
	mk -a ubase
	mk -a 9base
	mk -a mksh
	mk -a mandoc
	mk tcc
%:
	INSTDEST=$DEST cd $stem && mk do

