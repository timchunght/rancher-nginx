FROM nginx

ADD rancher.conf /etc/nginx/conf.d/rancher.conf

# overwrite entrypoint script
ADD entrypoint.sh /opt/entrypoint.sh
RUN chmod a+x /opt/entrypoint.sh

EXPOSE 80 443