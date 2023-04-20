
randomNumbers=()
for i in {1..10}; do
  randomNumbers+=($((RANDOM % 900 + 100)))
done

echo "Random numbers: ${randomNumbers[*]}"

sorted_numbers=($(printf "%d\n" "${randomNumbers[@]}" | sort -n))

echo "Sorted numbers: ${sorted_numbers[*]}"
 
second_smallest=${sorted_numbers[1]}
second_largest=${sorted_numbers[-2]}

echo "2nd Smallest: $second_smallest"
echo "2nd Largest: $second_largest"
