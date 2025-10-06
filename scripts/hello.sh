#!/usr/bin/env bash
set -euo pipefail
echo "================="
echo "hello,a greeting from your first script"
echo "==========================================="
echo "USER:$(whoami)"
echo "DATE:$(date)"
echo ""
echo "Current location and content:"
pwd
ls -lh
echo "============================================"