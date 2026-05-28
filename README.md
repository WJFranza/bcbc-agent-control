# BCBC Agent Control

Safe static control panel for BCBC local AI agents and local model systems.

## Current target

- Dexter AI agent
- Ollama local models
- Copy-ready operator commands
- Demo runner with visible output log
- Branded LAN-accessible control page

## Safety boundary

This page does **not** execute arbitrary shell commands from the browser.

Commands are copied and run intentionally by the operator.

That is the core safety rule of this project.

## Purpose

BCBC Agent Control gives a technician/operator one clean place to:

- Check local AI services
- Copy known-safe commands
- Run demos intentionally from a terminal
- Paste visible output into a local demo log
- Explain the local AI stack to another person
- Keep Dexter/Ollama/Baxter commands organized

## Repo layout

```text
bcbc-agent-control/
  index.html
  README.md
  LICENSE
  CHANGELOG.md
  assets/
    css/
    js/
    img/
  commands/
    dexter-status.md
    ollama-commands.md
    baxter-hub-commands.md
  demos/
    local-model-demo.md
    agent-demo.md
  docs/
    architecture.md
    safety-model.md
    roadmap.md
    apache-deploy.md
  tools/
    serve-local.sh
    package-site.sh
    deploy-apache-example.sh
  logs/
    .gitkeep
```

## Quick local preview

```bash
cd bcbc-agent-control
bash tools/serve-local.sh
```

Then open:

```text
http://127.0.0.1:8088/
```

## Apache deploy idea

Example target:

```text
/var/www/html/bcbc-agent-control/
```

Example command from inside this repo:

```bash
sudo rsync -av --delete ./ /var/www/html/bcbc-agent-control/
```

Then open:

```text
http://baxter-debian/bcbc-agent-control/
```

or by IP:

```text
http://192.168.0.225/bcbc-agent-control/
```

## Credits

Ideas, design, and concepts: William J. Franza, assisted by ChatGPT.

BCBC / AI-related project work: Mikey_LikesIT and ChatGPT.

OpenAI and ChatGPT are acknowledged as inspiration and assistance tools. This project is not an official OpenAI product and does not imply endorsement by OpenAI.
