#!/bin/bash

# Define paths
input_file="./raw_data/satelite_temperature_data.csv"
output_dir="./analyzed_data"

# Ensure the output directory exists
mkdir -p "$output_dir"

# Insight 1: Extract top 10 highest temperatures
sort -t, -k3 -nr "$input_file" | head -n 10 > "$output_dir/highest_temp.csv"

# Insight 2: Extract data for a specific country (e.g., Angola) and sort by humidity
country_name="Angola"
grep "$country_name" "$input_file" | sort -t, -k4 -nr > "$output_dir/humidity_data_$country_name.csv"

echo "Analysis complete. Outputs saved in $output_dir."


