numberRE='^[0-9]+$'

if ! [[ $1 =~ $numberRE ]] ; then
	echo "$1 is invalid input"
	exit 1
fi
if ! [[ $2 =~ $numberRE ]] ; then
	echo "$2 is invalid input"
	exit 1
fi


for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		echo -n "$i*$j=`expr $i \* $j` " 
	done
	echo
done
