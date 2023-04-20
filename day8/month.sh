declare -a months

# Generate birth months for 50 individuals between the years 92 and 93
for i in {1..50};
 do
    month=$((1 + RANDOM % 12))
    year=$((92 + RANDOM % 2))
    birthdate="$month/$year"
    months+=("$birthdate")
done

# Find all individuals having birthdays in the same month
declare -A same_month
for month in "${months[@]}";
 do
    if [[ -v same_month[$month] ]];
 then
        same_month[$month]=$((same_month[$month] + 1))
    else
        same_month[$month]=1
    fi
done

# Print the results
echo "Birthdays by month:"
for month in "${!same_month[@]}"; 
do
    count=${same_month[$month]}
    echo " - $month: $count individuals"
done
