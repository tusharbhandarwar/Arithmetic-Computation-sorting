#!/bin/bash -x

echo "Welcome to the Arithmetic Computation & Sorting"

read -p "Enter value for a" a
read -p "Enter value for b" b
read -p "Enter value for c" c

result1=$(( $a + $b * $c ))
result2=$(($a * $b + $c))

result3=$(( $c + ($a/$b) ))


result4=$(( ($a % $b) + $c ))

echo $result1

echo $result2
 
echo $result3

echo $result4

declare -A test_var

test_var['key1']=$result1
test_var['key2']=$result2
test_var['key3']=$result3

#add 

another_key_var='key4'

another_value_var=$result4

test_var[$another_key_var]=$another_value_var

echo ${test_var[key1]}

echo ${test_var[Key2]}

echo ${test_var[key3]}

echo ${test_var[@another_key_var]}

counter=0

Array[((counter++))]=$result1
Array[((counter++))]=$result2
Array[((counter++))]=$result3
Array[((counter++))]+$result4

echo ${Array[@]}

echo "Original Numbers in array:"

for (( i = 0; i <= 3; i++ ))
do
	echo ${Array[$i]}
done
for (( i=0; i <= 3; i++ ))
do
	for(( j=$1; j<=3; j++ ))
	do
		if [ ${Array[$i]} -lt ${Array[$j]}]
		then
			
			t=${Array[$]}
			Array[$i]=${Array[$j]}
			Array[$j]=$t
		fi
	done
done


echo -e  "\nSorted Numbers in descending order"

for (( i=0; i<= 3; i++ ))
do
	echo ${Array[$i]}
done
for (( i = 0; i <= 3; i++))
do
	for (( j = $i; j<=3; j++ ))
	do
		if [${Array[$i]} -gt ${Array[$j]}]
		then
			t=${Array[$i]}
			Array[$i]=${Array[$j]}
			Array[$j]=$t
		fi
	done
done

echo -e "\nSorted numbers in Ascending order"
for  (( i=0; i<= 3; i++ ))
do
	echo ${Array[$i]}
done


