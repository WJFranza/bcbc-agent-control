#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-/var/www/html/bcbc-agent-control}"

cd "$(dirname "$0")/.."

echo "Deploying to: $TARGET"
sudo mkdir -p "$TARGET"
sudo rsync -av --delete ./ "$TARGET"/   --exclude ".git"   --exclude "dist"   --exclude "*.zip"

curl -I "http://127.0.0.1/bcbc-agent-control/" || true
echo "Done."
