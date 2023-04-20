echo -n "enter single digit number"
read number
if [ $number -ge 0 ] && [ $number -le 9 ];
then
case $number in
  0) word ="zero" ;;
  1) word ="one" ;;
  2) word ="two" ;;
  3) word ="three" ;;
  4) word ="four" ;;
  5) word ="five" ;;
  6) word ="six" ;;
  7) word ="seven" ;;
  8) word ="eight" ;;
  9) word ="nine" ;;
 esac
echo "the number $number is word"
else
echo "errror plz enter valid number from 0 to 9"
fi
