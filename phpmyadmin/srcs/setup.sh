mkdir -p /var/run/php && php-fpm7 --nodaemonize --fpm-config /etc/php7/php-fpm.conf &
nginx -g "daemon off;"