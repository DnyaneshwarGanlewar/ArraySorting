declare -A result
echo "Enter The Value of A, B, & C"
read -p "a :" a
read -p "b :" b
read -p "c :" c
x=$(($a+($b*$c)))
echo "UC 2 : "$x
y=$((($a*$b)+$c))
echo "UC 3 : "$y
z=$(($c+($a/$b)))
echo "UC 4 : "$z
n=$(($a%$b+$c))
echo "UC 5 : "$n
result[0]=$x
result[1]=$y
result[2]=$z
result[3]=$n
echo "UC 6 : "${result[@]}
for ((i=0; i<=${result[0]}; i++))
do
${result[++]}
echo ${result[$i]};
done | sort -n -t-
for ((i=0; i<=${result[0]}; i++))
do
${result[++]}
echo ${result[$i]};
done | sort -n -r
