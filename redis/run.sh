docker stop celery_redis
docker rm celery_redis
docker run -d -p 6379:6379 \
-v $PWD/redis.conf:/etc/redis.conf \
-v $PWD/data:/data \
--restart always \
--name celery_redis \
redis:3.2 \
redis-server  /etc/redis.conf 