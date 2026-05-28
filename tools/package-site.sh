#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
OUT="dist"
NAME="bcbc-agent-control-site-$(date +%Y-%m-%d-%H%M%S).zip"

mkdir -p "$OUT"
zip -r "$OUT/$NAME" .   -x "dist/*"   -x ".git/*"   -x "*.zip"

echo "Created: $OUT/$NAME"
