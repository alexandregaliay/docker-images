# Docker / Drupal 8

Docker configuration for Drupal 8 development

### Build custom image

```bash
docker build -t "d8-custom:1.0" .
```

### Test Drupal 8 orig image

```bash
docker run -d -p 8080:80 "drupal:8"
```

### Launch docker compose

```bash
docker-compose up -d
```

### Work inside container

```bash
docker exec -it <containerID> /bin/bash
```

### Install Drupal with composer recommended-project
