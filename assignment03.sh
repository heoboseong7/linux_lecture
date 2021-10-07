numberRE='^[0-1]{,1}[0-9]$'

for num in $1 $2
do
	if ! [[ $num =~ $numberRE ]] ; then
		echo "$num is invalid input"
		exit
	fi
done

for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		echo -n "$i*$j=`expr $i \* $j` " 
	done
	echo
done
