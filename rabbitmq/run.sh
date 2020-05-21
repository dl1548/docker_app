docker stop zili_rabbitmq
docker rm zili_rabbitmq
docker run -d --name zili_rabbitmq \
-u 0 \
-p 5672:5672 -p 15672:15672 \
-v $PWD/data:/var/lib/rabbitmq \
--hostname zili_rabbitmq \
--restart always \
-e RABBITMQ_DEFAULT_VHOST=zilitest \
-e RABBITMQ_DEFAULT_USER=admin \
-e RABBITMQ_DEFAULT_PASS=admin \
--privileged=true \
rabbitmq:3.7.7-management
