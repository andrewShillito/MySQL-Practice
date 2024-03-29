DROP TABLE cats;
CREATE TABLE cats (
    id INT NOT NULL auto_increment,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (id)
);
DESC cats;
INSERT INTO cats(name, breed, age)
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
SELECT * FROM cats;