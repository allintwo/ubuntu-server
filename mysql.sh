
sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf

innodb_buffer_pool_size = 10G
innodb_log_file_size = 1G
innodb_flush_log_at_trx_commit = 2
query_cache_type = 1
query_cache_size = 64M

sudo systemctl restart mysql
