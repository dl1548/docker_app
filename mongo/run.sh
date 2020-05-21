docker stop zili_mongo
docker rm zili_mongo
docker run -d --name zili_mongo \
-p 27017:27017 \
-v $PWD/data:/data \
--hostname zili_mongo \
--restart always \
mongo
