USE book_shop;
SELECT * FROM books;
SELECT COUNT(*) FROM books;
SELECT COUNT(DISTINCT author_fname) FROM books;
SELECT COUNT(DISTINCT author_fname, author_lname) FROM books;
SELECT COUNT(title) FROM BOOKS WHERE title LIKE "%the%";

SELECT CONCAT(SUBSTRING(author_fname, 1, 1), ". ", author_lname) AS name, COUNT(*) AS num_books FROM books GROUP BY author_lname, author_fname ORDER BY author_lname, author_fname;
SELECT CONCAT(SUBSTRING(author_fname, 1, 1), ". ", author_lname) AS name, COUNT(*) AS num_books FROM books GROUP BY author_lname, author_fname ORDER BY num_books DESC, author_lname, author_fname;

SELECT MIN(released_year) FROM books;
SELECT CONCAT(title, " - ", SUBSTRING(author_fname, 1, 1), ". ", author_lname), COUNT(*) AS num_books FROM books GROUP BY author_lname, author_fname;

SELECT CONCAT(SUBSTRING(title, 1, 20), " - ", SUBSTRING(author_fname, 1, 1), ". ", author_lname) AS info, COUNT(*) AS num_books, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);
SELECT CONCAT(SUBSTRING(title, 1, 20), " - ", SUBSTRING(author_fname, 1, 1), ". ", author_lname) AS info, COUNT(*) AS num_books, pages FROM books WHERE pages = (SELECT MIN(pages) FROM books);
SELECT * FROM books ORDER BY pages LIMIT 1;

SELECT *, MIN(released_year) FROM books GROUP BY author_lname, author_fname;
SELECT * FROM books WHERE author_lname="Gaiman";
SELECT author_fname, author_lname, Max(pages) FROM books GROUP BY author_lname, author_fname ORDER BY Max(pages) DESC;

SELECT SUM(pages) from books;
SELECT author_fname, author_lname, SUM(pages) FROM books GROUP BY author_lname, author_fname ORDER BY SUM(pages) DESC;
SELECT CONCAT(SUBSTRING(author_fname, 1, 1), ". ", author_lname) AS author, SUM(pages) FROM books GROUP BY author_lname, author_fname ORDER BY SUM(pages), author_lname, author_fname ASC;

SELECT AVG(released_year) from books;
SELECT AVG(pages) from books;
SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year;
SELECT author_lname, author_fname, AVG(pages) FROM books GROUP BY author_lname, author_fname;


