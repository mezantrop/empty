#!/bin/sh

# em_sh.sh v.0.4, 2005, 2006 Mikhail Zakharov
# sh example for empty with job control and STDIN mode

# -----------------------------------------------------------------------------
tmp="/tmp/empty.tmp"			# tempfile to store results

echo "Starting empty"
empty -f -L $tmp sh 
if [ $? = 0 ]; then
	echo My jobs:
	empty -l

	echo "Sending tests"
	empty -s << EOF
echo -- EMPTY TEST BEGIN --
who am i
id
echo -- EMPTY TEST END --
sleep 1
exit
EOF
	sleep 1
	cat $tmp
	rm -f $tmp

else
	echo "Error: Can't start empty in daemon mode"
	return 1
fi

echo "Done"
