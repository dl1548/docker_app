docker stop zili_jira
docker rm zili_jira
docker run -d \
-p 8080:8080 \
--name zili_jira \
--volume $PWD/jira:/var/atlassian/jira \
-e JVM_MINIMUM_MEMORY=2048m \
-e JVM_MAXIMUM_MEMORY=4096m \
q2digger/jira-software:8.6.0

# -e CATALINA_CONNECTOR_PROXYNAME='jira.jk.local' \ 域名设置

