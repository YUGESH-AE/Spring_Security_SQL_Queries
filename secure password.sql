CREATE TABLE users (
username VARCHAR(45) NOT NULL ,
password VARCHAR(200) NOT NULL ,
enabled TINYINT NOT NULL DEFAULT 1 ,
PRIMARY KEY (username));
 CREATE TABLE user_roles (
user_role_id int(11) NOT NULL,
username varchar(45) NOT NULL,
role varchar(45) NOT NULL,
PRIMARY KEY (user_role_id),
UNIQUE KEY uni_username_role (role,username),
KEY fk_username_idx (username),
CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username));
INSERT INTO users(username,password,enabled)VALUES ('sam','{noop}sam@123', 1);
INSERT INTO user_roles(user_role_id,username ,role)VALUES (2,'sam', 'ROLE_USER');
