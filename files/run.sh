#!/bin/sh

blue_url=${BLUE_URL}
blue_port=${BLUE_PORT}
green_url=${GREEN_URL}
green_port=${GREEN_PORT}

sed -i "s/%BLUE_URL%/$blue_url/g" /etc/nginx/conf.d/nginx-docker.conf
sed -i "s/%BLUE_PORT%/$blue_port/g" /etc/nginx/conf.d/nginx-docker.conf
sed -i "s/%GREEN_URL%/$green_url/g" /etc/nginx/conf.d/nginx-docker.conf
sed -i "s/%GREEN_PORT%/$green_port/g" /etc/nginx/conf.d/nginx-docker.conf

nginx -g "daemon off;"
