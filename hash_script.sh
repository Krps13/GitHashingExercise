#!/bin/bash

input='0661' #Declaring input number as the 4 last digits of my AEM 

# Computing hash using SHA-256 
hash=$(echo -n "$input" | sha256sum | awk '{print $1}')

# Ouput the hash nunber 
echo "$hash"

# Save the hash to a .txt file 
echo "$hash" > hash_output.txt
