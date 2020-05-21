docker stop jkmoon
docker rm jkmoon
docker run -p 80:80 \
--name jkmoon \
-v $PWD/html:/usr/share/nginx/html \
-v $PWD/logs:/var/log/nginx \
-v $PWD/conf/nginx.conf:/etc/nginx/nginx.conf \
-v $PWD/conf/jkmoon.conf:/etc/nginx/conf.d/jkmoon.conf \
--restart always \
-d nginx