addpath() {
ifs=$IFS
IFS=:

flag="0"

for k; do
	for a in $PATH do
		if test "$k" = "$a"
		 then echo the directory already exists in PATH
		 continue 2 
		fi
	done
	
	PATH="$PATH:$k"
	echo added
done

IFS="$ifs"
return 0;
}
