overwrite() {
timefile=`mktemp /tmp/fileXXXXXX`

trap 'rm $timfile; exit' 2 3 15
cat > "$timefile"

if ["$?" -ne 0];
	then exit 1;
fi

trap '' 2 3 15
cat $timefile > "$1"
rm "$timefile"

echo Executed
}