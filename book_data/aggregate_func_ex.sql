USE book_shop;
SELECT * FROM books;

SELECT COUNT(*) FROM books;
SELECT released_year, COUNT(*) FROM books GROUP BY released_year ORDER BY released_year DESC;
SELECT SUM(stock_quantity) from books;
SELECT author_lname, author_fname, AVG(released_year) FROM books GROUP BY 1, 2 ORDER BY 1, 2;

SELECT CONCAT(author_fname, " ", author_lname) AS full_name, pages FROM books ORDER BY pages DESC LIMIT 1;
SELECT CONCAT(author_fname, " ", author_lname) AS full_name, pages FROM books WHERE pages = ( SELECT MAX(pages) from books );

SELECT released_year AS year, COUNT(*) as "# books", AVG(pages) AS "avg pages" FROM books GROUP BY released_year ORDER BY released_year;