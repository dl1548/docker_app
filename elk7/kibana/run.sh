docker stop zili_kibana
docker rm zili_kibana
docker run -d --name zili_kibana \
-p 5601:5601 \
-v $PWD/config/kibana.yml:/usr/share/kibana/config/kibana.yml \
kibana:7.1.1
