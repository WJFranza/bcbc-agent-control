# Baxter Hub Commands

## Check mounted hub from a client

```bash
mount | grep bcbc-hub || true
ls -lah /mnt/bcbc-hub
```

## Create friendly shortcut

```bash
ln -sfn /mnt/bcbc-hub "$HOME/BCBC-Hub"
ls -lah "$HOME/BCBC-Hub"
```

## Example rsync from client to Baxter hub

Adjust the machine name before running.

```bash
rsync -avh --progress "$HOME/Documents/" "/mnt/bcbc-hub/backups/$(hostname)/Documents/"
```

## Quick identity/storage/network snapshot

```bash
hostnamectl && echo && lsblk -f && echo && ip -br addr
```
