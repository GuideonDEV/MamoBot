FROM php:8.1-cli

# Instala dependencias necesarias del sistema (libcurl y herramientas de compilación)
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    pkg-config \
    unzip \
    && docker-php-ext-install curl

WORKDIR /app
COPY . .

CMD ["php", "index.php"]
