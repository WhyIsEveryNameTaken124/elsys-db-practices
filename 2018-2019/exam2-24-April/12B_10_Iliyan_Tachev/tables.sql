DROP DATABASE IF EXISTS Tumblr;
CREATE DATABASE Tumblr;
USE Tumblr;

CREATE TABLE User(
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(256) NOT NULL
);

CREATE TABLE Blog(
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(256) NOT NULL,
    number_of_likes INTEGER NOT NULL
);

CREATE TABLE BlogPost(
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(256) NOT NULL,
	blog_id INTEGER NOT NULL,
	FOREIGN KEY (blog_id) REFERENCES Blog(id)
);

CREATE TABLE Likes(
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
	user_id INTEGER NOT NULL,
    blog_post_id INTEGER NOT NULL,
	FOREIGN KEY (user_id) REFERENCES User(id),
    FOREIGN KEY (blog_post_id) REFERENCES BlogPost(id)
);
