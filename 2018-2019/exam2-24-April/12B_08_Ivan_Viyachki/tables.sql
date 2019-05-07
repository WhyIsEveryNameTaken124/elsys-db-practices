DROP DATABASE IF EXISTS Test;
CREATE DATABASE Test;
USE Test;


CREATE TABLE Blog(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    number_of_likes INT NOT NULL DEFAULT 0
);

CREATE TABLE BlogPost(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    blog_id INT NOT NULL DEFAULT 0,
    
    FOREIGN KEY (blog_id) REFERENCES Blog(id)
);

CREATE TABLE User(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Likes(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    blog_id INT NOT NULL,
    
    FOREIGN KEY (user_id) REFERENCES User(id),
	FOREIGN KEY (blog_id) REFERENCES Blog(id)

);
