from php:7.3-cli
RUN apt-get update ; apt-get install -y libicu-dev g++ git wget zlib1g-dev libzip-dev&&\
    docker-php-ext-configure intl &&\
    docker-php-ext-install intl zip

RUN curl https://raw.githubusercontent.com/composer/getcomposer.org/4d7f8d40f9788de07c7f7b8946f340bf89535453/web/installer  -s | php -- ; mv composer.phar /usr/local/bin/composer

