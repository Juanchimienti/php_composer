from php:7.0-apache
RUN apt-get update ; apt-get install -y libicu-dev g++ git wget zlib1g-dev zip &&\
    docker-php-ext-configure intl &&\
    docker-php-ext-install intl zip

RUN curl https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer  -s | php -- ; mv composer.phar /usr/local/bin/composer

