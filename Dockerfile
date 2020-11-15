FROM php:7.4-apache
RUN a2enmod rewrite
RUN apt-get update && apt-get install nano -y
COPY . /var/www/portfolio
ADD ./000-default.conf /etc/apache2/sites-available

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*