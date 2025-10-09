#!/usr/bin/env bash
set -euo pipefail

INPUT_FILE="data/raw/sample.csv"
OUTPUT_FILE="data/processed/clean_sample.csv"

tail -n +2 "$INPUT_FILE" | awk -F, '$3 > 4.0 {print $0}' > temp.csv

sed 's/$/,processed:yes/' temp.csv > "$OUTPUT_FILE"

rm temp.csv

echo "Processed file saved to $OUTPUT_FILE"