trap '' SIGHUP

a=""
b=""
c=""

it test -t 0
then
	a='</dev/null'
fi

if test -t 1
then
	b='>rte.out'
fi

if test -t 2
then 
	c='2>&1'
fi

eval "$@" "$a" "$b" "$c" &