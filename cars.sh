#! /bin/bash
# cars.sh
# Finn White

echo "Welcome to you car garage"
echo "Would you like to: "
echo "(1) Enter a new car"
echo "(2) Display your cars"
echo "(3) Quit the program"

read choice

while [ $choice -ne "3" ]
do
case $choice in
	"1")
	echo "Year? "
	read year
	echo "Make? "
	read makes
	echo "Model? "
	read model
	line=$year":"$makes":"$model
	echo $line >> My_old_cars;;

	"2")
	sort -n My_old_cars;;

	*)
	echo "Not a valid entry.";;
esac
echo "Thank you"
echo "Would you like to: "
echo "(1) Enter a new car"
echo "(2) Display your cars"
echo "(3) Quit the program"
read choice
done
