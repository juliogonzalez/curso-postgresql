CREATE DATABASE db2;
GRANT ALL PRIVILEGES ON db2.* TO 'usuario2'@'%' IDENTIFIED BY 'miclave2';
USE db2;
CREATE TABLE tabla2 (id INTEGER NOT NULL, username VARCHAR(20) NOT NULL, constraint pk_tabla2 primary key(id));
INSERT INTO tabla2 VALUES (1, 'usuario1');
INSERT INTO tabla2 VALUES (2, 'usuario2');
INSERT INTO tabla2 VALUES (3, 'usuario3');
INSERT INTO tabla2 VALUES (4, 'usuario4');
INSERT INTO tabla2 VALUES (5, 'usuario5');
