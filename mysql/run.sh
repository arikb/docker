docker run -d --name mysql --restart=always -e MYSQL_ROOT_PASSWORD=pass -v /home/docker-config/mysql:/var/lib/mysql arikb/mysql
