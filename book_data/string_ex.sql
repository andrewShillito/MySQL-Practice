SELECT * FROM books;
SELECT (REVERSE(UPPER("Why does my cat look at me with such hatred")));
SELECT title FROM books;
SELECT REPLACE(title, " ", " -> ") AS title FROM books;
SELECT author_lname AS forwards, REVERSE(author_lname) AS backwards from books;
SELECT UPPER(CONCAT(author_fname, " ", author_lname)) AS 'full name in caps' from books;
SELECT CONCAT(title, " was released in ", released_year) AS blurb FROM books;
SELECT title, char_length(title) AS "character count" from books;
SELECT  CONCAT(SUBSTRING(title, 1, 20), "...") AS "short title", 
		CONCAT(author_lname, ", ", author_fname) AS author, 
        CONCAT(stock_quantity, " in stock") AS quantity from books;