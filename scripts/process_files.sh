#!/bin/bash

# Check if exactly two arguments are provided
# We require two parameters first a csv file and second our public key file
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 input_file.csv public_key.asc"
    exit 1
fi

# Append the arguments to 'host/' directory
input_file="host/$1"
public_key="host/$2"

# This utility will convert the input file to a unix line
# ending if required
dos2unix "$input_file"

# Compress the file
gzip -c "$input_file" > "$input_file.gz"

# Import the public Key
gpg --import "$public_key"

# Encrypt our file
gpg --yes --trust-model always --output "$input_file.gz.gpg" --encrypt --armor -r cipherdecode@healthverity.com "$input_file.gz"

# Remove the gzipped artifact
rm "$input_file.gz"
