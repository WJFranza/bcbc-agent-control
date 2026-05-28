# Dexter Status Commands

Run on Dexter unless noted otherwise.

## Service status

```bash
systemctl status dexter.service --no-pager
```

## Recent logs

```bash
journalctl -u dexter.service -n 80 --no-pager
```

## Restart Dexter

```bash
sudo systemctl restart dexter.service
sleep 3
systemctl status dexter.service --no-pager
```

## Check listening ports

```bash
ss -tulpn | grep -E '18789|11434|dexter|ollama' || true
```
