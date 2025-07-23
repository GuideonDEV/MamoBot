# Imagen base oficial de PHP CLI
FROM php:8.1-cli

# Instalar extensiones necesarias (como cURL para Telegram API)
RUN docker-php-ext-install curl

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar todo el código del bot al contenedor
COPY . .

# Comando por defecto al iniciar el contenedor
CMD ["php", "index.php"]
