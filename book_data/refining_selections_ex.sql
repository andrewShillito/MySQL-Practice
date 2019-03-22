USE book_shop;
SELECT * FROM books;
SELECT title from books WHERE title LIKE "%stories%";
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
SELECT title FROM books ORDER BY released_year DESC LIMIT 3;
SELECT title, author_lname FROM books WHERE author_lname LIKE "% %";
SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity, title ASC LIMIT 3;
SELECT title, author_lname FROM books ORDER BY author_lname, title;
SELECT UPPER(CONCAT("MY FAVORITE AUTHOR IS ", author_fname, " ", author_lname)) AS yell FROM books ORDER BY author_lname, author_fname;