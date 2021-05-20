# Docker / Drupal 7

Docker configuration for Drupal 7 development

### Test Drupal 7 orig image

```bash
docker run -d -p 8080:80 "drupal:7"
```

### Build custom image

```bash
docker build -t "d7-custom:1.0" .
```

### Launch docker compose

```bash
docker compose up -d
```

### Work inside container

```bash
docker exec -it <containerID> /bin/bash
```
