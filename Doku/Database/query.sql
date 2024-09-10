INSERT INTO Userrole (role_name, role_level) VALUES ('admin', '1');
INSERT INTO Userrole (role_name, role_level) VALUES ('user', '2');

INSERT INTO User (username, firstname, lastname, id_role) VALUES ('admin', 'admin', 'admin', 1);
INSERT INTO User (username, firstname, lastname, id_role) VALUES ('Testuser', 'Max', 'Mustermann', 2);

INSERT INTO Product (name, price, stock) VALUES ('Logitech Mouse', 15.99, 20);
INSERT INTO Product (name, price, stock) VALUES ('Logitech Keyboard', 39.99, 20);

INSERT INTO Category (name) VALUES ('Mouse');
INSERT INTO Category (name) VALUES ('Keyboard');
INSERT INTO Category (name) VALUES ('Peripherals');

INSERT INTO ProductCategory (id_product, id_category) VALUES (1, 1);
INSERT INTO ProductCategory (id_product, id_category) VALUES (2, 2);
INSERT INTO ProductCategory (id_product, id_category) VALUES (1, 3);
INSERT INTO ProductCategory (id_product, id_category) VALUES (2, 3);
