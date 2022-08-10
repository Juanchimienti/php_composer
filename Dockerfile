from php:8.1.8-cli
RUN apt-get update ; apt-get install -y libicu-dev g++ git wget zlib1g-dev libzip-dev&&\
    docker-php-ext-configure intl &&\
    docker-php-ext-install intl zip

RUN curl https://raw.githubusercontent.com/composer/getcomposer.org/e9a10d696aba5c182faebec9031b68f13325af9f/web/installer -s | php -- ; mv composer.phar /usr/local/bin/composer

RUN echo -n 'log_errors = On\nerror_log = /dev/stderr\n' > /usr/local/etc/php/conf.d/error_log.ini
