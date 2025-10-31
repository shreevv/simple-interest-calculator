#!/bin/bash

# This script calculates simple interest.

# Prompt the user for the principal amount
echo "Enter the principal amount:"
read principal

# Prompt the user for the annual interest rate
echo "Enter the annual interest rate (e.g., 5 for 5%):"
read rate

# Prompt the user for the time period in years
echo "Enter the time period in years:"
read time

# Calculate the simple interest
# We use 'bc -l' for floating-point arithmetic
interest=$(echo "$principal * $rate * $time / 100" | bc -l)

# Print the result, formatted to two decimal places
printf "The simple interest is: %.2f\n" $interest
