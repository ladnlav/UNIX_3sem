for y in "$@" ; do
	while read a; do
		echo "$a"
		sleep 1
	done <"$y"
done