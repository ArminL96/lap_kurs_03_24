CREATE TABLE Person (
    ID int NOT NULL AUTO_INCREMENT,
    firstname varchar(255),
    lastname varchar(255),
    PRIMARY KEY(ID)
);

CREATE TABLE Role (
    ID int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    bonusmultiplier float,
    PRIMARY KEY(ID)
);

CREATE TABLE Team (
    ID int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    PRIMARY KEY(ID)
);

CREATE TABLE Project (
    ID int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    start_date date,
    end_date date,
    bonus float,
    ID_team int,
    PRIMARY KEY(ID),
    FOREIGN KEY (ID_team) REFERENCES Team (ID)
);

CREATE TABLE PersonRole (
    ID int NOT NULL AUTO_INCREMENT,
    ID_person int,
    ID_role int,
    PRIMARY KEY(ID),
    FOREIGN KEY (ID_person) REFERENCES Person (ID),
    FOREIGN KEY (ID_role) REFERENCES Role (ID)
);

CREATE TABLE PersonTeam (
    ID int NOT NULL AUTO_INCREMENT,
    ID_person int,
    ID_team int,
    PRIMARY KEY(ID),
    FOREIGN KEY (ID_person) REFERENCES Person (ID),
    FOREIGN KEY (ID_team) REFERENCES Team (ID)
);

INSERT INTO `role`(`name`, `bonusmultiplier`) VALUES ('leader','1.15');
INSERT INTO `role`(`name`, `bonusmultiplier`) VALUES ('member','1');

INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Augustine','Mitter');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Constantin','Prohaska');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Rosalinde','Pavlovic');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Barbara','Walter');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Kristina','Kaltenbrunner');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Elzbieta','Mayr');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Gloria','Hagen');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Thomas','Pfleger');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Suzana','Glück');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Erwin','Klein');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Janina','Schweighofer');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Frieich','Tiefenbacher');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Lya','Krenn');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Anna','Hirsch');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Fatih','Haas');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Magda','Ecker');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Gotthard','Lorenz');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Priska','Mayerhofer');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Vladimir','Wild');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Gunter','Pokorny');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Erwin','Tiefenbacher');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Thomas','Tiefenbacher');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Thomas','Mayerhofer');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Thomas','Ecker');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Vladimir','Tiefenbacher');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Erwin','Mayerhofer');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Vladimir','Mayerhofer');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Thomas','Ecker');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Janina','Tiefenbacher');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Thomas','Schweighofer');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Erwin','Kaltenbrunner');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Vladimir','Prohaska');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Janina','Mayerhofer');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Thomas','Krenn');
INSERT INTO `person`(`firstname`, `lastname`) VALUES ('Erwin','Haas');

INSERT INTO `team`(`name`) VALUES ('Team 1');
INSERT INTO `team`(`name`) VALUES ('Team 2');
INSERT INTO `team`(`name`) VALUES ('Team 3');
INSERT INTO `team`(`name`) VALUES ('Team 4');
INSERT INTO `team`(`name`) VALUES ('Team 5');
INSERT INTO `team`(`name`) VALUES ('Team 6');
INSERT INTO `team`(`name`) VALUES ('Team 7');
INSERT INTO `team`(`name`) VALUES ('Team 8');

INSERT INTO `project`(`name`, `ID_team`, `start_date`, `end_date`, `bonus`) VALUES ('Project 1','1','2024-01-15','2024-02-15','100');
INSERT INTO `project`(`name`, `ID_team`, `start_date`, `end_date`, `bonus`) VALUES ('Project 2','2','2024-01-23','2024-02-23','120');
INSERT INTO `project`(`name`, `ID_team`, `start_date`, `end_date`, `bonus`) VALUES ('Project 3','3','2024-02-09','2024-02-28','100');
INSERT INTO `project`(`name`, `ID_team`, `start_date`, `end_date`, `bonus`) VALUES ('Project 4','4','2024-02-09','2024-02-28','150');
INSERT INTO `project`(`name`, `ID_team`, `start_date`, `end_date`, `bonus`) VALUES ('Project 5','5','2024-02-01','2024-02-28','100');
INSERT INTO `project`(`name`, `ID_team`, `start_date`, `end_date`, `bonus`) VALUES ('Project 6','6','2024-02-01','2024-02-28','100');
INSERT INTO `project`(`name`, `ID_team`, `start_date`, `end_date`, `bonus`) VALUES ('Project 7','7','2024-01-01','2024-02-28','120');
INSERT INTO `project`(`name`, `ID_team`, `start_date`, `end_date`, `bonus`) VALUES ('Project 8','8','2024-02-03','2024-02-28','130');
INSERT INTO `project`(`name`, `ID_team`, `start_date`, `end_date`, `bonus`) VALUES ('Project 9','4','2024-03-01','2024-03-19','140');
INSERT INTO `project`(`name`, `ID_team`, `start_date`, `end_date`, `bonus`) VALUES ('Project 10','2','2024-03-01','2024-03-19','100');
INSERT INTO `project`(`name`, `ID_team`, `start_date`, `end_date`, `bonus`) VALUES ('Project 11','7','2024-03-01','2024-03-19','110');
INSERT INTO `project`(`name`, `ID_team`, `start_date`, `end_date`, `bonus`) VALUES ('Project 12','1','2024-03-01','2024-03-19','100');

INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('1','1');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('2','1');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('3','1');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('4','2');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('5','2');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('6','2');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('7','2');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('8','3');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('9','3');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('10','3');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('11','4');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('12','4');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('13','4');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('14','4');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('15','4');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('16','5');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('17','5');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('18','5');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('19','6');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('20','6');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('21','6');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('22','6');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('23','6');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('24','6');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('25','6');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('26','7');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('27','7');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('28','7');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('29','8');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('30','8');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('31','8');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('32','8');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('33','8');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('34','8');
INSERT INTO `personteam`(`ID_person`, `ID_team`) VALUES ('35','8');

INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('1','1');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('2','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('3','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('4','1');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('5','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('6','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('7','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('8','1');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('9','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('10','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('11','1');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('12','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('13','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('14','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('15','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('16','1');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('17','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('18','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('19','1');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('20','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('21','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('22','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('23','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('24','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('25','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('26','1');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('27','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('28','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('29','1');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('30','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('31','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('32','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('33','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('34','2');
INSERT INTO `personrole`(`ID_person`, `ID_role`) VALUES ('35','2');


SELECT person.firstname, person.lastname, team.name 
FROM person
LEFT JOIN personteam ON person.ID = personteam.ID_person
AND
LEFT JOIN personteam ON team.ID = personteam.ID_team