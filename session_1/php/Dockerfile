FROM php:7.0
RUN apt-get update -y && apt-get install git -y
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
COPY . /app
WORKDIR /app
CMD composer install --no-interaction
