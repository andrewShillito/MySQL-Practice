CREATE TABLE cats(
	name VARCHAR(50) NOT NULL DEFAULT "unknown" PRIMARY KEY,
    age INT,
    breed VARCHAR(50) NOT NULL DEFAULT "unknown"
);
SHOW TABLES;
SHOW COLUMNS FROM cats;

INSERT INTO cats(name, age, breed)
VALUES 	("meg", 10, "mixed"),
		("new", 1, "calico"),
        ("old", 21, "tabby");
SELECT * FROM cats;