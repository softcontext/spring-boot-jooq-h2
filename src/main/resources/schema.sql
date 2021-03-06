DROP TABLE IF EXISTS COMMENTS;
DROP TABLE IF EXISTS POSTS;
 
CREATE TABLE POSTS (
  ID int(11) NOT NULL AUTO_INCREMENT,
  TITLE varchar(200) NOT NULL,
  CONTENT LONGTEXT DEFAULT NULL,
  CREATED_ON datetime DEFAULT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE COMMENTS (
  ID int(11) NOT NULL AUTO_INCREMENT,
  POST_ID int(11) NOT NULL, 
  NAME varchar(200) NOT NULL,
  EMAIL varchar(200) NOT NULL,
  CONTENT LONGTEXT DEFAULT NULL,
  CREATED_ON datetime DEFAULT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (POST_ID) REFERENCES POSTS(ID)
);


--create table if not exists todos (
--  id bigint auto_increment primary key,
--  creation_time timestamp not null default current_timestamp,
--  description varchar(500),
--  modification_time timestamp not null default current_timestamp,
--  title varchar(100)
--);