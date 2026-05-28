#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-8088}"

cd "$(dirname "$0")/.."
echo "Serving BCBC Agent Control at http://127.0.0.1:${PORT}/"
python3 -m http.server "$PORT"
