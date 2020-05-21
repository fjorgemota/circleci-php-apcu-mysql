FROM circleci/php:7.4-cli-node
MAINTAINER contato@fjorgemota.com
RUN echo no | sudo pecl install -f apcu
RUN sudo docker-php-ext-enable apcu
RUN sudo docker-php-ext-install mysqli pdo_mysql bcmath
RUN sudo apt-get update && \
    sudo apt-get install -y libicu-dev gettext-base libpng-dev && \
    sudo docker-php-ext-configure intl && \
    sudo docker-php-ext-install intl && \
    sudo docker-php-ext-install bcmath && \
    sudo docker-php-ext-install gd && \
    sudo docker-php-ext-install zip
