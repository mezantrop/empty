empty-0.6.22b -- run applications under pseudo-terminal (PTY) sessions and
replace TCL/Expect with a simple tool under your favourite shell (sh, bash,
csh, tcsh, ksh, zsh, etc)

WARNING!
--------------------------------------------------------------------------------
This version of the software has BUGS, so be careful and use it on you own risk!
--------------------------------------------------------------------------------

INSTALLATION
	for all known *BSD systems and Linux run:
		make all
		make install clean

	on all other *UNIX try:
		    make `uname -s` install clean
		or
		    make `uname -s`-gcc install clean

	This will compile and place empty with its manual page under
	/usr/local tree.

	Empty was successfully compiled and tested on:
		* FreeBSD, NetBSD, OpenBSD, macOS
		* Linux kernels (32 and 64bits)
		* SCO UnixWare 7.1.1, OpenUnix 8.0.0
		* Oracle/SUN Solaris
		* IBM AIX
		* HP-UX 11.00, 11.11, 11.23 (pa-risc, itanium)
		* Cygwin DLL-1.5.19-4 (Experimental, see README.CYGWIN)
		* OSF1 4.0, 5.1

USAGE
	See empty(1) manual and samples under examples/ directory.


BUGS
	Please, send all your reports, patches and suggestions to
	zmey20000@yahoo.com. Developers are welcome.

THANKS TO
	Adrian Ho
	Aleksey Kozlov <avtolik@newmail.ru>
	Alexey Rudometov <rudometov@u-systems.ru>
	Alex Slyotov <aslyotov@gmail.com>
	Bernd Schuller
	David Hofstee <davidh@blinker.nl>
	Dennis Schridde
	Dmitry S. Vlasov <vlasov@quantum.ru>
	Elisender <allex_9@ngs.ru>
	Lang Qiu <qiulang@gmail.com>
	Ralf Winkel
	Roman Gorohov <idle@idle.org.ru>
	sdio <sdio4lor @ gmail.com>
	Sergey Redin <sergey@redin.info>
	Sergey V <flexdsl@mail.ru>
	Sergey Yaroshevsky <astraserg@proc.ru>
	Sylvain DEGUT <sylvain.degut@neuf.fr>
	Vincenzo Maggio <vince.maggio@gmail.com>
	Waldemar Brodkorb <wbx@openadk.org>

	I express deep gratitude to Hewlett Packard AO Russia and personally to
	Denis Karzhavin and Andrew Kuchinsky for C110 (9000/777) workstation

August, 10, 2022
Mikhail Zakharov <zmey20000@yahoo.com>
