# Docker / Drupal 8

Docker configuration for Drupal 8 development

### Test Drupal 8 orig image

```bash
docker run -d -p 8080:80 "drupal:8"
```

### Build custom image

```bash
docker build -t "d8-custom:1.0" .
```

### Launch docker compose

```bash
docker compose up -d
```

### Work inside container

```bash
docker exec -it <containerID> /bin/bash
```
