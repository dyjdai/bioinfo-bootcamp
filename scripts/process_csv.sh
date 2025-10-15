#!/usr/bin/env bash
set -euo pipefail
COFIG_FILE="config/config.yaml"

RAW_DIR=$(grep "raw_dir:" "$CONFIG_FILE" | awk '{print $2}') #从路径CONFIG_FILE搜索raw_dir行,由awk打印
MIN_VALUE=$(grep "min_value:" "$CONFIG_FILE" | awk '{print $2}')
INPUT_FILE="$RAW_DIR/sample.csv"
INPUT_FILE="data/raw/sample.csv"
OUTPUT_FILE="data/processed/clean_sample.csv"

tail -n +2 "$INPUT_FILE" | awk -F, '$3 > 4.0 {print $0}' > temp.csv

sed 's/$/,processed:yes/' temp.csv > "$OUTPUT_FILE"

rm temp.csv

echo "Processed file saved to $OUTPUT_FILE"