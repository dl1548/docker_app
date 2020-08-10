docker stop exec_nexus
docker rm exec_nexus
docker run -u 0 -d \
-p 8081:8081 \
-p 8082:8082 \
-e INSTALL4J_ADD_VM_PARAMS="-Xms2g -Xmx2g -XX:MaxDirectMemorySize=2g -Djava.util.prefs.userRoot=/some-other-dir" \
-v $PWD/data/nexus-data:/nexus-data \
-v $PWD/data/some-other-dir:/some-other-dir \
--name exec_nexus \
--restart always \
sonatype/nexus3:3.21.1

# 8081 nexus服务  8082 镜像服务