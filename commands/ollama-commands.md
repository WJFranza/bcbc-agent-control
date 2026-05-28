# Ollama Commands

Run on the machine hosting Ollama.

## Service status

```bash
systemctl status ollama.service --no-pager
```

## List installed models

```bash
ollama list
```

## Show running models

```bash
ollama ps
```

## Simple local model test

```bash
ollama run qwen2.5-coder:7b 'Reply with exactly: BCBC local AI test OK'
```

## Check Ollama HTTP endpoint

```bash
curl -s http://127.0.0.1:11434/api/tags | head -c 1000 && echo
```
