start=0
end=100

# Initialize the array to store the repeated digits
repeated_digits=()

# Loop through the range and check for repeated digits
for ((num=$start; num<=$end; num++))
do
    # Convert the number to a string for easy manipulation
    num_str="$num"
    # Check if any digit is repeated twice
    for ((i=0; i<${#num_str}; i++))
    do
        digit="${num_str:$i:1}"
        if [[ $(grep -o $digit <<< $num_str | wc -l) -eq 2 ]]
        then
            # If a digit is repeated twice, add it to the array
            repeated_digits+=($num)
            break
        fi
    done
done

# Display the repeated digits array
echo "The digits repeated twice in the range $start to $end are: ${repeated_digits[*]}"
