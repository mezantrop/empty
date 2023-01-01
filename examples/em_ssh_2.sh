#!/bin/sh

# em_ssh_2.sh v.0.6, 2005, 2006, 2023 Mikhail Zakharov
# ssh example for empty with job control, STDIN mode and session log

ssh="ssh"						# (/full/path/to/)ssh
target="localhost"				# target host
login="luser"					# username (Change it!)
password="TopSecret"			# password (Change it!)

# -----------------------------------------------------------------------------
cmd="$ssh $login@$target"
tmp="/tmp/empty.tmp"			# tempfile to store results

echo "Starting empty"
empty -f -L $tmp $cmd
if [ $? = 0 ]; then
	echo "Sending Password"
	empty -v -w "assword:" "$password\n" "assword" "$password\n"

	echo "Sending tests"
        empty -s << EOF
who am i
id
exit
EOF
	echo "Check results:"
	sleep 1
	cat $tmp
	rm -f $tmp
else
	echo "Error: Can't start empty in daemon mode"
	return 1
fi

echo "Done"
