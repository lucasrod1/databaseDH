CREATE DATABASE IF NOT EXISTS notas;
USE notas;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
	user_id INT NOT NULL AUTO_INCREMENT,
	email VARCHAR(30) NOT NULL,
	nombre VARCHAR(30) NOT NULL,
	PRIMARY KEY (user_id)
);
DROP TABLE IF EXISTS notas;
CREATE TABLE notas (
	nota_id INT NOT NULL AUTO_INCREMENT,
	user_id INT NOT NULL,
	title VARCHAR (200) NOT NULL,
	creation_date DATE NOT NULL,
	modification_date DATE NOT NULL,
	description TEXT NOT NULL,
	PRIMARY KEY (nota_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);
DROP TABLE IF EXISTS categorias;
CREATE TABLE categorias (
	category_id INT NOT NULL AUTO_INCREMENT,
	category_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (category_id)
);
DROP TABLE IF EXISTS notas_categorias;
CREATE TABLE notas_categorias (
	notesCat_id INT NOT NULL AUTO_INCREMENT,
	nota_id INT NOT NULL,
	category_id INT NOT NULL,
	PRIMARY KEY (notesCat_id),
	FOREIGN KEY (nota_id) REFERENCES notas(nota_id),
	FOREIGN KEY (category_id) REFERENCES categorias(category_id)
);

INSERT INTO users (email, nombre)
VALUES ('a@a.com', 'Julio');
INSERT INTO users (email, nombre)
VALUES ('b@a.com', 'Alejandro');
INSERT INTO users (email, nombre)
VALUES ('c@a.com', 'Ariel');
INSERT INTO users (email, nombre)
VALUES ('d@a.com', 'Juan');
INSERT INTO users (email, nombre)
VALUES ('e@a.com', 'Lucas');
INSERT INTO users (email, nombre)
VALUES ('f@a.com', 'Nahuel');
INSERT INTO users (email, nombre)
VALUES ('g@a.com', 'Diego');
INSERT INTO users (email, nombre)
VALUES ('h@a.com', 'Paola');
INSERT INTO users (email, nombre)
VALUES ('i@a.com', 'Rosa');
INSERT INTO users (email, nombre)
VALUES ('j@a.com', 'Bella');

INSERT INTO notas (user_id, title, creation_date, modification_date, description)
VALUES (1, 'Manzana', '2021-09-20', '2021-09-20', 'Fruta 1');
INSERT INTO notas (user_id, title, creation_date, modification_date, description)
VALUES (11, 'Pera', '2021-09-21', '2021-09-21', 'Fruta 2');
INSERT INTO notas (user_id, title, creation_date, modification_date, description)
VALUES (3, 'Mandarina', '2021-09-22', '2021-09-22', 'Fruta 3');
INSERT INTO notas (user_id, title, creation_date, modification_date, description)
VALUES (4, 'Sandia', '2021-09-23', '2021-09-23', 'Fruta 4');
INSERT INTO notas (user_id, title, creation_date, modification_date, description)
VALUES (5, 'Naranja', '2021-09-24', '2021-09-24', 'Fruta 5');
INSERT INTO notas (user_id, title, creation_date, modification_date, description)
VALUES (6, 'Palta', '2021-09-25', '2021-09-25', 'Fruta 6');
INSERT INTO notas (user_id, title, creation_date, modification_date, description)
VALUES (7, 'Limon', '2021-09-26', '2021-09-26', 'Fruta 7');
INSERT INTO notas (user_id, title, creation_date, modification_date, description)
VALUES (8, 'Ciruela', '2021-09-27', '2021-09-27', 'Fruta 8');
INSERT INTO notas (user_id, title, creation_date, modification_date, description)
VALUES (9, 'Lima', '2021-09-28', '2021-09-28', 'Fruta 9');
INSERT INTO notas (user_id, title, creation_date, modification_date, description)
VALUES (10, 'Melon', '2021-09-29', '2021-09-29', 'Fruta 10');

INSERT INTO categorias (category_name)
VALUES ('Roja');
INSERT INTO categorias (category_name)
VALUES ('Azul');
INSERT INTO categorias (category_name)
VALUES ('Verde');
INSERT INTO categorias (category_name)
VALUES ('Naranja');
INSERT INTO categorias (category_name)
VALUES ('Amarillo');
INSERT INTO categorias (category_name)
VALUES ('Marron');
INSERT INTO categorias (category_name)
VALUES ('Celeste');
INSERT INTO categorias (category_name)
VALUES ('Violeta');
INSERT INTO categorias (category_name)
VALUES ('Negro');
INSERT INTO categorias (category_name)
VALUES ('Blanco');

INSERT INTO notas_categorias (nota_id, category_id)
VALUES (4,2);
INSERT INTO notas_categorias (nota_id, category_id)
VALUES (2,3);
INSERT INTO notas_categorias (nota_id, category_id)
VALUES (4,5);
INSERT INTO notas_categorias (nota_id, category_id)
VALUES (6,7);
INSERT INTO notas_categorias (nota_id, category_id)
VALUES (8,9);
INSERT INTO notas_categorias (nota_id, category_id)
VALUES (10,1);
INSERT INTO notas_categorias (nota_id, category_id)
VALUES (9,2);
INSERT INTO notas_categorias (nota_id, category_id)
VALUES (8,3);
INSERT INTO notas_categorias (nota_id, category_id)
VALUES (7,4);
INSERT INTO notas_categorias (nota_id, category_id)
VALUES (6,5);

