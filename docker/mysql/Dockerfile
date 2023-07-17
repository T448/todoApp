FROM mysql:8

EXPOSE 3306

# ADD ./my.cnf /etc/mysql/conf.d/my.cnf
COPY initdb/* /docker-entrypoint-initdb.d/

CMD ["mysqld"]