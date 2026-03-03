#!/bin/sh
set -e

# Railway provides PORT. Fallback for local.
: "${PORT:=8080}"

# Make Apache listen on Railway's port
sed -i "s/Listen 80/Listen ${PORT}/" /etc/apache2/ports.conf
sed -i "s/<VirtualHost \*:80>/<VirtualHost *:${PORT}>/" /etc/apache2/sites-available/000-default.conf

# Start Apache
exec apache2-foreground
