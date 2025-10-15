#！/user/bin/env bash
set -euo pipefail

conda active basebio

./sripts/hello.sh
./script/process_csv.sh
echo "All steps reproduced successfullt!"