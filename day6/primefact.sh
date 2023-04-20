n=$1

for ((i=2; i*i<=n; i++)); do
  while ((n % i == 0)); do
    echo "$i"
    n=$((n / i))
  done
done

if ((n > 1)); then
  echo "$n"
fi
