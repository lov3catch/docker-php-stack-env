FROM php:7.4-fpm
RUN apt-get update && apt-get install -y \
    neovim \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    wget \
    curl \
    git \
    libpq-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install pdo pdo_pgsq
COPY php.ini "$PHP_INI_DIR/php.ini"
WORKDIR /var/www
