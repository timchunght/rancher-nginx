Rancher Nginx:
```
sudo docker run -d --restart=unless-stopped --name=rancher-server rancher/server
```

```
docker run -it -p 80:80 --link=rancher-server -v <ssl_private_key_location>:/etc/ssl/certs/ssl.key -v <ssl_public_key_location>:/etc/ssl/certs/ssl.pem rancher-nginx
```