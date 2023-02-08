FROM php:8.1-alpine
COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apk add git
RUN git clone -b v1.2.4 https://github.com/krayin/laravel-crm.git
WORKDIR laravel-crm
RUN composer create-project
