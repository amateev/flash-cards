CREATE DATABASE flashcards_db;

USE flashcards_db;

 
CREATE TABLE question (
	id INT NOT NULL AUTO_INCREMENT,
	question TEXT NOT NULL,
	subject VARCHAR (255) NOT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE answer (
	id INT NOT NULL AUTO_INCREMENT,
	answer TEXT,
	question_id INT (10) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (question_id) REFERENCES question(id)
);