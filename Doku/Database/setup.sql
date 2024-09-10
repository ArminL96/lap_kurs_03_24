CREATE DATABASE lap_shopping;

CREATE TABLE Userrole (
    id int NOT NULL AUTO_INCREMENT,
    role_name varchar(255) NOT NULL,
    role_level int NOT NULL UNIQUE,
    PRIMARY KEY (id)
);

CREATE TABLE User (
    id int NOT NULL AUTO_INCREMENT,
    username varchar(255) NOT NULL,
    firstname varchar(255) NOT NULL,
    lastname varchar(255) NOT NULL,
    id_role int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_role) REFERENCES Userrole (id)
);

CREATE TABLE Image(
    id int NOT NULL AUTO_INCREMENT,
    large_binary_data LONGBLOB,
    name varchar(255),
    content_type varchar(255),
    PRIMARY KEY (id)
);

CREATE TABLE Product (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    description varchar(65535),
    price float NOT NULL,
    stock int NOT NULL,
    id_image int,
    PRIMARY KEY (id),
    FOREIGN KEY (id_image) REFERENCES Image (id)
);

CREATE TABLE Category (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ProductCategory (
    id int NOT NULL AUTO_INCREMENT,
    id_product int NOT NULL,
    id_category int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_product) REFERENCES Product (id),
    FOREIGN KEY (id_category) REFERENCES Category (id)
);

CREATE TABLE ProductList (
    id int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id),
);

CREATE TABLE ProductListProduct (
    id int NOT NULL AUTO_INCREMENT,
    id_product int NOT NULL,
    id_productlist int NOT NULL
    PRIMARY KEY (id), 
    FOREIGN KEY (id_product) REFERENCES Product (id),
    FOREIGN KEY (id_productlist) REFERENCES ProductList (id)
);

CREATE TABLE ShoppingCart (
    id int NOT NULL AUTO_INCREMENT,
    id_user int NOT NULL,
    id_productlist int,
    PRIMARY KEY (id),
);

CREATE TABLE Order (
    id int NOT NULL AUTO_INCREMENT,
    id_user int NOT NULL,
    id_productlist int NOT NULL,
    orderdate date NOT NULL, 
    PRIMARY KEY (id),
    FOREIGN KEY (id_user) REFERENCES User (id),
    FOREIGN KEY (id_productlist) REFERENCES ProductList (id)
);