CREATE DATABASE My_Data_PR_PRIMARY_KEY;
USE My_Data_PR_PRIMARY_KEY;
CREATE TABLE users(
 user_id INT AUTO_INCREMENT PRIMARY KEY ,
 user_name VARCHAR(40),
 password VARCHAR(255),
 email VARCHAR(255)
);

CREATE TABLE roles(
  role_id INT AUTO_INCREMENT  PRIMARY KEY ,
  role_name VARCHAR(50)
);

CREATE TABLE userroles(
    user_id int not null ,
    role_id int not null ,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
     FOREIGN KEY (role_id) REFERENCES roles(role_id)
);
DROP TABLE userroles
