-- MySQL Database commands
-- Not all commands correct

-- DB created, root password, Username and password set
-- during CloudFormation Stack creation
USE InEX;

-- Soldier Entity (Prime)
CREATE TABLE Soldier (
id  INTEGER NOT NULL, 
name_last VARCHAR(100) NOT NULL, 
name_first VARCHAR(100) NOT NULL, 
UNIQUE (id),
PRIMARY KEY (id)
);

-- Removed - DOL (Date of Level)
-- Removed - Level is the level at the time of posting
-- May be better if level and DOL come from a different table??

-- Soldier values for testing 
INSERT INTO Soldier VALUES (2001,'Doe','John');
INSERT INTO Soldier VALUES (2002,'Smith','Bob');
INSERT INTO Soldier VALUES(2003,'Jones','Jim');

-- level assigned to soldier
-- dates of previous promotions
-- edit to foreign key sold_id (find and fix original syntax)
CREATE TABLE LevelAssigned (
sold_id  INTEGER NOT NULL REFERENCES Soldier (id),
level VARCHAR NOT NULL REFERENCES Levels(name),
leveldate DATE NOT NULL,
) 

-- level assigned to soldier values for testing 
-- multiple dates and levels have been added to simulate progression over time.
-- Military promotes on 1st of the month so day of month may not be needed?
-- 'level' column may not need leading "level" as in 'level 5'? 
-- May be able to simply use single digets
INSERT INTO LevelAssigned VALUES ('2001', 'level 6', '2020-04-01');
INSERT INTO LevelAssigned VALUES ('2001', 'level 5', '2020-03-01');
INSERT INTO LevelAssigned VALUES ('2001', 'level 4', '2020-02-01');
INSERT INTO LevelAssigned VALUES ('2001', 'level 3', '2020-01-01');
INSERT INTO LevelAssigned VALUES ('2001', 'level 2', '2019-12-01');
INSERT INTO LevelAssigned VALUES ('2001', 'level 1', '2019-11-01');
INSERT INTO LevelAssigned VALUES ('2002', 'level 2', '2019-12-01');
INSERT INTO LevelAssigned VALUES ('2002', 'level 3', '2020-01-01');
INSERT INTO LevelAssigned VALUES ('2002', 'level 1', '2019-11-01');
INSERT INTO LevelAssigned VALUES ('2003', 'level 7', '2020-03-01');
INSERT INTO LevelAssigned VALUES ('2003', 'level 6', '2020-02-01');
INSERT INTO LevelAssigned VALUES ('2003', 'level 5', '2020-01-01');
INSERT INTO LevelAssigned VALUES ('2003', 'level 4', '2019-12-01');
INSERT INTO LevelAssigned VALUES ('2003', 'level 3', '2019-11-01');
INSERT INTO LevelAssigned VALUES ('2003', 'level 2', '2019-10-01');
INSERT INTO LevelAssigned VALUES ('2003', 'level 1', '2019-09-01');

-- Levels
-- Not sure I need this table
CREATE TABLE Levels (
name VARCHAR(100) PRIMARY KEY
);

--Levels Values for testing
-- 'level' column may not need leading "level" as in 'level 5'? 
-- May be able to simply use single digets
INSERT INTO Levels VALUES('level 1');
INSERT INTO Levels VALUES('level 2');
INSERT INTO Levels VALUES('level 3');
INSERT INTO Levels VALUES('level 4');
INSERT INTO Levels VALUES('level 5');
INSERT INTO Levels VALUES('level 6');
INSERT INTO Levels VALUES('level 7');
INSERT INTO Levels VALUES('level 8');
INSERT INTO Levels VALUES('level 9'); 
INSERT INTO Levels VALUES('level 10');
INSERT INTO Levels VALUES('level 11');
INSERT INTO Levels VALUES('level 12');

-- Soldier status on a particular date
-- work in progress need more testing
-- may be better written as a view? 
CREATE TABLE SoldierStatus (
sold_id INTEGER NOT NULL REFERENCES Soldier(id) ON UPDATE CASCADE ON DELETE CASCADE,
level INTEGER NOT NULL,
leveldate INTEGER NOT NULL,
PRIMARY KEY (sold_id),
UNIQUE(sold_id));
