FROM php:8.1-cli

# Instalar dependencias necesarias para curl y mysqli
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    pkg-config \
    unzip \
    default-mysql-client \
    && docker-php-ext-install curl mysqli

WORKDIR /app
COPY . .

CMD ["php", "main.php"]
