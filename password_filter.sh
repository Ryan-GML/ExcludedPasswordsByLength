#!/bin/bash

# Ensure correct number of arguments are provided
if [[ $# -ne 3 ]]; then
    echo "Usage: $0 <input_filename> <output_filename> <password_length>"
    exit 1
fi

# Assign input file, output file, and password length from provided arguments
input_file="$1"
output_file="$2"
min_length="$3"

# Create the output file (overwrite if it exists)
> "$output_file"

# Process each line in the input file
while read -r password; do
    # Check if the password length is greater than or equal to the specified minimum
    if [[ ${#password} -ge "$min_length" ]]; then
        # Append the password to the output file
        echo "$password" >> "$output_file"
    fi
done < "$input_file"
