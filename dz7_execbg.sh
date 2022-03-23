#! /bin/sh

trap '' SIGHUP

if test -t 1
then 
	$@ > filetest.out & 
else 
	$@ &
fi
