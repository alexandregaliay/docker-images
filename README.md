# Docker / Drupal 7

Docker configuration for Drupal 7 development

### Build image

```bash
docker build -t "d7-custom:1.0" .
```

### Launch docker compose

```bash
docker-compose up -d
```

### Work inside containre

```bash
docker exec -it <containerID> /bin/bash
```
