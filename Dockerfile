FROM php:8.3-cli

# Install PHP Mess Detector
RUN curl -L https://github.com/phpmd/phpmd/releases/download/2.15.0/phpmd.phar  -o /usr/local/bin/phpmd \
    && chmod +x /usr/local/bin/phpmd

RUN echo "error_reporting = E_ALL & ~E_DEPRECATED" > /usr/local/etc/php/php.ini

WORKDIR /app

ENTRYPOINT ["phpmd"]

