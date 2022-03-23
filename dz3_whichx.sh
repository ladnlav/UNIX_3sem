ifs=$IFS
IFS=:

for x in "$@" ; do
	for y in $PATH ; do
		if test -f "$y/$x" -a -x "$y/$x";
		then echo "$y/$x";
		fi;
	done
done

IFS=$ifs