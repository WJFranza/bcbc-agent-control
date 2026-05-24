#!/usr/bin/env bash
set -u

WEBROOT="/var/www/bcbc/bcbc-agent-control"
LOG="$WEBROOT/agent-demo.log"

sudo mkdir -p "$WEBROOT"
sudo touch "$LOG"
sudo chown "$USER:$USER" "$LOG"

{
echo "===== BCBC Dexter Agent Demo ====="
date
echo
echo "[1/5] Checking agent status..."
bcbc-agent status --no-pager 2>/dev/null || bcbc-agent status
sleep 3

echo
echo "[2/5] Checking memory..."
if [ -s "$HOME/dexter-memory.json" ]; then
  bcbc-agent memory
else
  echo "No saved memory yet."
fi
sleep 3

echo
echo "[3/5] Checking active Ollama models..."
bcbc-agent ps
sleep 3

echo
echo "[4/5] Checking installed models..."
bcbc-agent models
sleep 3

echo
echo "[5/5] Demo complete."
date
echo "===== END ====="
} | tee "$LOG"
