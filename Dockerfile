FROM circleci/php:7.0-cli-node
MAINTAINER contato@fjorgemota.com
RUN echo no | sudo pecl install -f apcu
RUN sudo docker-php-ext-enable apcu
RUN sudo docker-php-ext-install mysqli pdo_mysql
