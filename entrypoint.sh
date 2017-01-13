#!/bin/bash

echo ">> setting rancher url to $RANCHER_URL"
sed -i "s/\${RANCHER_URL}/$RANCHER_URL/" /etc/nginx/conf.d/rancher.conf
sed -i "s/\${RANCHER_PORT}/$RANCHER_PORT/" /etc/nginx/conf.d/rancher.conf
sed -i "s/\${RANCHER_CONTAINER_NAME}/$RANCHER_CONTAINER_NAME/" /etc/nginx/conf.d/rancher.conf

echo ">> copy /etc/nginx/external/*.conf files to /etc/nginx/conf.d/"
cp /etc/nginx/external/*.conf /etc/nginx/conf.d/ 2> /dev/null > /dev/null

# exec CMD
echo ">> exec docker CMD"
echo "$@"
exec "$@"
