docker stop exec_bitbucket
docker rm exec_bitbucket
docker run \
-v $PWD/data:/var/atlassian/application-data/bitbucket \
--name="exec_bitbucket" \
-d -p 7990:7990 -p 7999:7999 \
--env-file=$PWD/secure-bitbucket.env \
bitbucket-server

