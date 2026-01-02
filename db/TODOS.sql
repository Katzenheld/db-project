CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(250) NOT NULL UNIQUE,
    password VARCHAR(250) NOT NULL
);

CREATE TABLE todos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    users_id INT NOT NULL,
    content VARCHAR(100),
    due DATETIME,
    FOREIGN KEY (users_id) REFERENCES users(id)
);

CREATE TABLE frage_1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE frage_2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE frage_3 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE frage_5 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE frage_6 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE frage_7 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);


CREATE TABLE frage_4 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tier VARCHAR(100) NOT NULL
);

INSERT INTO frage_4 (tier) VALUES
('Katze'),
('Hund');


INSERT INTO frage_1 (name) VALUES
('Alex'), ('Sam'), ('Harvey'), ('Emily'), ('Leah'), ('Haley');

INSERT INTO frage_2 (name) VALUES
('Elliot'), ('Harvey'), ('Leah'), ('Penny'), ('Maru'), ('Sebastian'), ('Haley');

INSERT INTO frage_3 (name) VALUES
('Shane'), ('Elliot'), ('Leah');

INSERT INTO frage_5 (name) VALUES
('Sebastian'), ('Abigail'), ('Shane');

INSERT INTO frage_6 (name) VALUES
('Alex'), ('Elliot'), ('Sam'), ('Haley'), ('Leah'), ('Penny'), ('Emily');

INSERT INTO frage_7 (name) VALUES
('Harvey'), ('Sebastian'), ('Shane'), ('Abigail'), ('Maru');


SELECT name FROM frage_1
INTERSECT
SELECT name FROM frage_3
INTERSECT
SELECT name FROM frage_2
INTERSECT
SELECT name FROM frage_6;


SELECT name FROM frage_1
INTERSECT
SELECT name FROM frage_2
INTERSECT
SELECT name FROM frage_3
INTERSECT
SELECT name FROM frage_5
INTERSECT
SELECT name FROM frage_7;

