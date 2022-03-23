ifs=$IFS
IFS=:

while read a a a num fio a; do
	if test "$num" == `id -g`
	then
		echo $fio;
	fi;
done </etc/passwd
IFS=$ifs