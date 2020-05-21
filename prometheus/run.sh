docker stop zili_prometheus
docker rm zili_prometheus
docker run -d -p 9090:9090 \
-v $PWD/prometheus.yml:/etc/prometheus/prometheus.yml \
--restart always \
--name zili_prometheus \
prom/prometheus \