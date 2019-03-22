USE test;
SHOW TABLES;
SELECT * FROM cats;
SELECT * FROM people;

CREATE TABLE IF NOT EXISTS dogs (name Char(5), breed VARCHAR(10));

INSERT INTO dogs (name, breed) VALUES ("bob", "husky");
INSERT INTO dogs (name, breed) VALUES ('bob', 'beagle');
INSERT INTO dogs (name, breed) VALUES ('robby', 'corgi'); 
/* INSERT INTO dogs (name, breed) VALUES ('Princess Jane', 'Retriever'); 
	generate error 1406 - data too long
 */
-- INSERT INTO dogs (name, breed) VALUES ('Princess Jane', 'Retrievesadfdsafdasfsafr');
-- generate error 1406 - data too long
SELECT * FROM dogs;

CREATE TABLE IF NOT EXISTS humans (
    name VARCHAR(100), 
    birthdate DATE, 
    birthtime TIME, 
    birthdt DATETIME
);
INSERT INTO humans (name, birthdate, birthtime, birthdt) 
	VALUES ("Padma", CURDATE(), CURTIME(), NOW());
    
INSERT INTO humans (name, birthdate, birthtime, birthdt)
VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');

INSERT INTO humans (name, birthdate, birthtime, birthdt)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

SELECT * FROM humans;
SELECT birthdt, CONCAT(MONTHNAME(birthdt), " ", DAY(birthdt), " ", YEAR(birthdt), " at ", HOUR(birthdt)) FROM humans;
SELECT DATE_FORMAT(birthdt, "%W, %M %D %Y at %r") AS date FROM humans;
SELECT DATE_FORMAT(birthdt, "%m/%d/%y") AS date FROM humans;
SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') FROM humans;

CREATE TABLE comments (
    content VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW(),
    last_edited TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);