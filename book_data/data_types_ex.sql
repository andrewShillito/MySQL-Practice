USE test;
SHOW TABLES;
CREATE TABLE inventory (
	item_name VARCHAR(200),
    price DECIMAL(8, 2),
    quantity INT
);
SELECT NOW();
SELECT CURDATE();
SELECT CURTIME();
SELECT DATE_FORMAT(NOW(), "%w");
SELECT DATE_FORMAT(NOW(), "%W");
SELECT DATE_FORMAT(NOW(), "%d/%c/%Y");
SELECT DATE_FORMAT(NOW(), "%M %D at %H:%i%p");

CREATE TABLE IF NOT EXISTS tweets (
	content VARCHAR(44),
    username VARCHAR(20),
    created_time TIMESTAMP DEFAULT NOW(),
    edited_time TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);