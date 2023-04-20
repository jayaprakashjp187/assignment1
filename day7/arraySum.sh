read -p "enter array array of integers (space-separated)" -a arr

#  length of the array
n=${#arr[@]}

# Initialize the flag to check if a triplet is found
found=0

# Iterate through the array to find triplets that add up to zero
for ((i=0; i<n-2; i++)); do
    for ((j=i+1; j<n-1; j++)); do
        for ((k=j+1; k<n; k++)); do
            if [ $((arr[i] + arr[j] + arr[k])) -eq 0 ]; then
                echo "Triplet: ${arr[i]} ${arr[j]} ${arr[k]}"
                found=1
            fi
        done
    done
done

# If no triplet then it will get:
if [ $found -eq 0 ]; then
    echo "No triplet found"
fi
