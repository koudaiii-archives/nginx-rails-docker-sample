#!/bin/sh

app_url=${APP_URL}
app_port=${APP_PORT}

sed -i "s/%APP_URL%/$app_url/g" /etc/nginx/conf.d/nginx-docker.conf
sed -i "s/%APP_PORT%/$app_port/g" /etc/nginx/conf.d/nginx-docker.conf

nginx -g "daemon off;"
