CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(250) NOT NULL UNIQUE,
    password VARCHAR(250) NOT NULL
);

CREATE TABLE todos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    content VARCHAR(100),
    due DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE mastery(
    id INT AUTO_INCREMENT PRIMARY KEY,
    namen VARCHAR(100) NOT NULL,
    vorteile VARCHAR(100) NOT NULL,
    nachteile VARCHAR(250) NOT NULL
);

CREATE TABLE geldverdienen(
    id INT AUTO_INCREMENT PRIMARY KEY,
    art VARCHAR(100) NOT NULL,
    vorteile VARCHAR(100) NOT NULL,
    nachteile VARCHAR(250) NOT NULL
);

CREATE TABLE farmlayout(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    zweck VARCHAR(100) NOT NULL,
    vorteile VARCHAR(250) NOT NULL,
    nachteile VARCHAR(20) NOT NULL
);

CREATE TABLE haustiere(
    id INT AUTO_INCREMENT PRIMARY KEY,
    tierart VARCHAR(100) NOT NULL
);

CREATE TABLE partner(
    id INT AUTO_INCREMENT PRIMARY KEY,
    vorname VARCHAR(100) NOT NULL,
    love_gift VARCHAR(250) NOT NULL,
    hate_gift VARCHAR(20) NOT NULL,
    geschlecht VARCHAR(20) NOT NULL
);

CREATE TABLE sozial_leben ( 
    id INT AUTO_INCREMENT PRIMARY KEY, 
    haustiere_id INT NOT NULL, 
    partner_id INT NOT NULL, 
    FOREIGN KEY (haustiere_id) REFERENCES haustiere(id), 
    FOREIGN KEY (partner_id) REFERENCES partner(id) 
); 
