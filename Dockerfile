# Docker base image
FROM drupal:8

# Install packages
RUN apt-get update && apt-get install --no-install-recommends -y \
    curl \
    wget \
    nano \
    git \
    unzip \
    default-mysql-client

# Clean repository
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Update composer
RUN composer self-update --2

# Set bash alias
RUN echo "alias la='ls -la --color=auto'" >> ~/.bashrc \
    && . ~/.bashrc