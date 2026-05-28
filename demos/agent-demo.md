# Agent Demo

## Goal

Show the Dexter agent service and logs in a safe, explainable way.

## Commands

```bash
systemctl status dexter.service --no-pager
journalctl -u dexter.service -n 50 --no-pager
```

## Demo notes

Use the visible output log on the web page to paste terminal output for review or demonstration.
