use book_shop;
SELECT * from books;
SELECT CONCAT(author_fname, " ", author_lname) AS full_name FROM books;
SELECT author_fname AS first, author_lname as last, CONCAT(author_fname, " ", author_lname) as full FROM books;
SELECT CONCAT_WS(", ", author_fname, author_lname) AS full FROM books;