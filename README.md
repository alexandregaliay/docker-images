# Docker / Drupal 8

Docker configuration for Drupal 8 development

### Build image

```bash
docker build -t "d8-custom:1.0" .
```

### Launch docker compose

```bash
docker-compose up -d
```

### Work inside containre

```bash
docker exec -it <containerID> /bin/bash
```
