ifs=$IFS
IFS=:

for x in "$@" ; do
	case "$x" in
	*/* ) if test -f "$x" -a -x "$x"
			then echo "$x"
		  fi ; ;
	* ) for y in $PATH
		do
		if test -f "$y/$x" -a -x "$y/$x"
			then echo "$y/$x"
		fi
		done ; ;
	esac
done
IFS=$ifs