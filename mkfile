# Feel free to set these semi-permananently
# DEST = location of /
# MAN  = location of /share/man (Should expand to $DEST$MAN)
DEST=$INSTDEST
MAN=$MANINST

%:
	INSTDEST=$DEST cd $target && make do

all: sinit ubase smdev 9base mandoc mksh tcc
