# Dev config for Sirepo systemd services

## Files
```bash
$ ls -al /etc/systemd/system/sirepo\@.service
-rw-rw-r-- 2 vagrant expdev 282 Jul 17 00:00 /etc/systemd/system/sirepo@.service
```
(this file is a hard-link to `/home/expdev/sirepo-dev-config/services/sirepo@.service`, the symlink does not work!)

```bash
$ ls -la /home/expdev/bin/
total 8
drwxrwsr-x  2 vagrant expdev 4096 Jul 16 03:16 .
drwxrwsr-x 12 vagrant expdev 4096 Jul 16 03:22 ..
lrwxrwxrwx  1 vagrant expdev   45 Jul 16 03:16 env.sh -> /home/expdev/sirepo-dev-config/scripts/env.sh
lrwxrwxrwx  1 vagrant expdev   48 Jul 16 03:07 sirepo.sh -> /home/expdev/sirepo-dev-config/scripts/sirepo.sh
```

## Usage

### Reload systemctl daemon:
```bash
sudo systemctl daemon-reload
```
This action may be needed in case the `sirepo@.service` file was changed.

### Start Sirepo services:
```bash
sudo systemctl start sirepo@rabbitmq sirepo@celery sirepo@uwsgi sirepo@nginx_proxy sirepo@flower
```

### Check the status of Sirepo services:
```bash
sudo systemctl status sirepo@rabbitmq sirepo@celery sirepo@uwsgi sirepo@nginx_proxy sirepo@flower
```
(use `-l` to display full lines)

### Stop Sirepo services:
```bash
sudo systemctl stop sirepo@flower sirepo@nginx_proxy sirepo@uwsgi sirepo@celery sirepo@rabbitmq
```
(please note the reverse order comparing to the start command above)

### Check the logs:
```bash
sudo journalctl -u sirepo@* -xef
```

## Credits
Useful pieces are taken from:
- https://stackoverflow.com/a/48232848/4143531
- https://stackoverflow.com/a/53928427/4143531
- https://stackoverflow.com/a/43830129/4143531
