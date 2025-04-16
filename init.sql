CREATE DATABASE IF NOT EXISTS StudentDB;
USE StudentDB

CREATE TABLE Students (
	studentID int,
	lastName varchar(255),
	firstName varchar(255)
);

INSERT INTO Students VALUES (1, "Diaz", "Andrew");
INSERT INTO Students VALUES (2, "Nelson", "Brayden");
INSERT INTO Students VALUES (3, "Collind", "Gerry");
