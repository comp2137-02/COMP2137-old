#!/bin/bash


default1=5
default2=7

if [ -f ~/.cmdargs.conf ]; then
	source ~/.cmdargs.conf
fi

echo "the 0 variable has '$0'"
echo "the 1 variable has '$1'"
echo "the 2 variable has '$2'"


cat <<EOF

This command is called $(basename $0)

The syntax for running it is :  $(basename $0)

EOF

declare -a stuffToProcess
while [ $# -gt 0 ]; do
	case "$1" in
		-h | --help )
			echo "Usage: $0 [-h] [stuff ...]"
			exit 0
			;;
		* )
			stuffToProcess+=("$1")
			;;
		esac
	shift
done

[ ${#stuffToProcess[@]} ] &&
	echo "Will do work on ${stuffToProcess[@]} (${#stuffToProcess[@]} items)"
