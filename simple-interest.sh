@'
#!/bin/bash

echo "Simple Interest Calculator"

read -p "Enter principal amount: " p
read -p "Enter annual rate of interest (%): " r
read -p "Enter time period in years: " t

interest=$(awk -v p="$p" -v r="$r" -v t="$t" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "The simple interest is: $interest"
'@ | Set-Content -Encoding utf8 simple-interest.sh