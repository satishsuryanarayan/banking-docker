set global innodb_redo_log_capacity=1024*1024*1024;

create user if not exists 'banker'@'%' identified by 'secret';
create database if not exists bank;
create database if not exists test_bank;
grant all on bank.* to 'banker'@'%';
grant all on test_bank.* to 'banker'@'%';
flush privileges;
