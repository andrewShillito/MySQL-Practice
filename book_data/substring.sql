SELECT CONCAT(SUBSTRING(author_fname, 1, 1), ". ", author_lname) FROM books;
SELECT * FROM books;
SELECT CONCAT(title, ", ", SUBSTRING(author_fname, 1, 1), ". ", author_lname, ", ", SUBSTRING(released_year, 3, 4)) AS book FROM books;