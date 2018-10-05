CREATE DATABASE db_preguntados;
USE db_preguntados;  # define base por defaul

CREATE TABLE usuarios (
	id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(254) NOT NULL UNIQUE, 
    password VARCHAR(50) NOT NULL,
	facebok_id VARCHAR(50),
    avatar VARCHAR(50) DEFAULT 'imagenes/avatars/default.png'
);

CREATE TABLE 