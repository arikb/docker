docker run -d --name sv --restart=always -p 127.0.0.1:1080:1080 --cap-add NET_ADMIN -v /home/docker-config/socksvpn:/config:ro arikb/socksvpn
