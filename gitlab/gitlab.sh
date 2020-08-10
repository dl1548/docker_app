HOST_NAME=gitlab.zili.com
GITLAB_DIR=/srv/gitlab
docker stop zili_gitlab
docker rm zili_gitlab
docker run -d \
    --hostname ${HOST_NAME} \
    -p 443:443 -p 81:80 -p 2222:22 \
    --env GITLAB_OMNIBUS_CONFIG="external_url 'http://gitlab.zili.com/'; gitlab_rails['gitlab_shell_ssh_port'] = 2222;" \
    --name zili_gitlab \
    --restart always \
    -v ${GITLAB_DIR}/config:/etc/gitlab \
    -v ${GITLAB_DIR}/logs:/var/log/gitlab \
    -v ${GITLAB_DIR}/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest

# mkdir {config,logs,data}
