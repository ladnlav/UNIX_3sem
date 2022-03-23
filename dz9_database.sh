while true
do 
	test -t 0 && echo "Employee surname input"
	read surname || break
	test z- $surname && break
	
	test -t 0 && echo "Enter work experience"
	read exp
	
	worker="$surname $exp"
	
	while !mkdir /tmp/indic
		do
			sleep 1
		done
	
	echo $worker >> data
	rmdir /tmp/indic
done