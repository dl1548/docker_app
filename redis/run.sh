docker stop celery_redis
docker rm celery_redis
docker run \
--privileged=true \
-d -p 6379:6379 \
-v $PWD/redis.conf:/etc/redis.conf \
-v $PWD/data:/data \
--restart always \
--name celery_redis \
redis:5.0.8 \
redis-server  /etc/redis.conf 
