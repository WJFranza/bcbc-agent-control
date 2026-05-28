# Architecture

BCBC Agent Control is intentionally simple.

It is a static website that provides copy-ready commands, notes, and operator guidance for local AI services.

## Components

```text
Browser UI
  |
  | shows known-safe commands
  | copies commands to clipboard
  | stores pasted demo notes locally in browser storage
  v
Human operator
  |
  | intentionally runs commands in terminal
  v
Local systems
  |
  | Dexter agent
  | Ollama service
  | Baxter hub
  | Apache/LAN pages
```

## Non-goals

This project does not:

- Execute arbitrary shell commands from the browser
- Provide a browser-based root terminal
- Accept unsanitized command input
- Replace SSH, systemd, or normal Linux administration
- Hide what is being run from the operator

## Future optional API

A future version may add read-only status endpoints such as:

```text
/status/ollama
/status/dexter
/status/gpu
/logs/recent
```

Any action endpoint must be strictly whitelisted.
