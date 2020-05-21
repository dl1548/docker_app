docker stop zili_mysql
docker rm zili_mysql
docker run -p 3306:3306 \
--name zili_mysql \
-v $PWD/data:/var/lib/mysql \
-v $PWD/conf/my.cnf:/etc/mysql/my.cnf  \
-e MYSQL_ROOT_PASSWORD=123qweASD \
--restart always \
-d mysql:5.7


# -v $PWD/conf:/etc/mysql/conf.d \
# -v $PWD/logs:/logs \


#远程
# GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '123qweASD' WITH GRANT OPTION;
# flush privileges; 

#导出
# docker exec -it zili_mysql mysqldump -uroot -123qweASD test_db > /opt/sql_bak/test_db.sql

#导入
# docker exec -it zili_mysql mysql -uroot -p123qweASD
# create database c_api;
# docker exec -i zili_mysql mysql -uroot -123qweASD test_db_copy < /opt/sql_bak/test_db.sql

