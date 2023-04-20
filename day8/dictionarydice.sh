declare -A results
for a in {1..6}; do
    results[$a]=0
done

# Roll the die and update the dictionary until one number reaches 10 times

while true; do

    roll=$((1 + RANDOM % 6))

    # Update the dictionary

    results[$roll]=$((results[$roll] + 1))

    for a in {1..6}; do
        if (( ${results[$a]} >= 10 )); 
            then
           # Find the number that reached maximum times

            max=1
            for b in {2..6}; do
                if (( ${results[$b]} > ${results[$max]} ));
                  then
                    max=$b
                fi
            done

            # Find the number that was rolled the minimum times

            min=1
            for b in {2..6}; do
                if (( ${results[$b]} < ${results[$min]} ));
                  then
                    min=$b
                fi
            done

            echo "Number $max reached maximum times."
            echo "Number $min reached minimum times."
            exit
        fi
    done
done
