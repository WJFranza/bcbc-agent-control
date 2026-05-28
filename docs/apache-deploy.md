# Apache Deploy

Example target:

```text
/var/www/html/bcbc-agent-control/
```

From inside the repo:

```bash
sudo mkdir -p /var/www/html/bcbc-agent-control
sudo rsync -av --delete ./ /var/www/html/bcbc-agent-control/
curl -I http://127.0.0.1/bcbc-agent-control/
```

LAN examples:

```text
http://baxter-debian/bcbc-agent-control/
http://192.168.0.225/bcbc-agent-control/
```
