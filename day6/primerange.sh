start=$1
end=$2

for ((n=start; n<=end; n++)); do
  prime=1

  if ((n <= 1)); then
    prime=0
  else
    for ((i=2; i*i<=n; i++)); do
      if ((n % i == 0)); then
        prime=0
        break
      fi
    done
  fi

  if ((prime == 1)); then
    echo "$n"
  fi
done
