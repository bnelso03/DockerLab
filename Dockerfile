FROM opensuse/leap:15.6

RUN zypper install -y mariadb && \
  mkdir -p /var/lib/mysql /var/run/mysql && \
  chown -R mysql:mysql /var/lib/mysql /var/run/mysql && \
  mysql_install_db --user=mysql

COPY init.sql /init.sql

CMD ["sh", "-c", "mysqld --user=root --datadir=/var/lib/mysql & sleep 3 && mysql -u root < /init.sql"]
