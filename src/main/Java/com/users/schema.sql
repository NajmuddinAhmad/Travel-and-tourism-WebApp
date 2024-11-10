create database Tourism_App ;

use Tourism_App;

create table user(
  user_id INT auto_increment primary key ,
  username varchar(200) not null unique ,
  email varchar(250) not null unique,
  password varchar(200) not null 
  
);
