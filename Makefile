#
# Makefile for empty
#
# Usage:
# 	make all install clean
# or
# 	make `uname -s` install clean
# or 
# 	make `uname -s`-gcc install clean
#


CC =	cc
LIBS =	-lutil

PREFIX = /usr/local
BINDIR = $(PREFIX)/bin
MANDIR = $(PREFIX)/man/man1

.PHONY:	all clean install deinstall uninstall \
FreeBSD NetBSD OpenBSD Linux Cygwin UnixWare OpenUNIX AIX OSF1 HP-UX SunOS \
UnixWare-gcc OpenUNIX-gcc HP-UX-gcc SunOS-gcc

all:
	${CC} ${CFLAGS} -Wall ${LIBS} -o empty empty.c

FreeBSD:	all
NetBSD:		all
OpenBSD:	all

Linux:		all
Cygwin:		all

UnixWare:	SunOS
OpenUNIX:	SunOS
AIX:		SunOS
OSF1:		SunOS
HP-UX:		SunOS
SunOS:
	cc -o empty empty.c

UnixWare-gcc:	SunOS-gcc
OpenUNIX-gcc:	SunOS-gcc
HP-UX-gcc:	SunOS-gcc
SunOS-gcc:
	gcc ${CFLAGS} -Wall -o empty empty.c

install:
	[ -f `which strip` ] && strip empty
	[ -d ${BINDIR} ] && cp empty ${BINDIR} || mkdir -p ${BINDIR} && cp empty ${BINDIR}
	[ -d ${MANDIR} ] && cp empty.1 ${MANDIR} || mkdir -p ${MANDIR} && cp empty.1 ${MANDIR}
deinstall:
	rm ${BINDIR}/empty
	rm ${MANDIR}/empty.1
uninstall:	deinstall

clean:
	rm empty 
