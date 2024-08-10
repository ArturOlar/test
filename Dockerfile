# Use an official PHP-FPM image as the base image
FROM php:8.2-fpm

# Set the working directory inside the container
WORKDIR /var/www/html

# Install necessary packages and PHP extensions
RUN apt-get update && apt-get install -y \
    unzip \
    libzip-dev \
    && docker-php-ext-install zip pdo pdo_mysql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy the application files into the container
COPY . /var/www/html

# Ensure the www-data user owns the files
RUN chown -R www-data:www-data /var/www/html

# Expose port 9000 for PHP-FPM
EXPOSE 9000

# Start PHP-FPM
CMD ["php-fpm"]
