# Docker base image
FROM drupal:7

# Install packages
RUN apt-get update && apt-get install --no-install-recommends -y \
    curl \
    wget \
    nano \
    git \
    unzip \
    default-mysql-client

# Install Drush 8.4.5
RUN wget -nv https://github.com/drush-ops/drush/releases/download/8.4.5/drush.phar \
    && chmod +x drush.phar \
    && mv drush.phar /usr/local/bin/drush

# Clean repository
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set bash alias
RUN echo "alias la='ls -la'" >> ~/.bashrc \
    && . ~/.bashrc


# Install Composer
# RUN curl -sS https://getcomposer.org/installer | php && \
#     mv composer.phar /usr/local/bin/composer && \
#     ln -s /root/.composer/vendor/bin/drush /usr/local/bin/drush
#
# # Install Drush through Composer
# RUN composer global require drush/drush && \
#     composer global update
