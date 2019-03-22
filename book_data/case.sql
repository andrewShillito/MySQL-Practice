SELECT * FROM books;
SELECT CONCAT(REVERSE(SUBSTRING(author_fname, 1, 3)), ", ", LOWER(SUBSTRING(author_lname, 1, 1)), UPPER(SUBSTRING(author_lname, 2))) AS jumbled FROM books;