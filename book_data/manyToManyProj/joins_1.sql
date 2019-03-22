SELECT series.id, title, rating FROM series 
JOIN reviews 
	ON series.id = reviews.series_id
    ORDER BY title;

SELECT title, AVG(rating) AS average_rating FROM series
JOIN reviews
	ON series.id = reviews.series_id
	GROUP BY title
    ORDER BY average_rating ASC;

SELECT first_name, last_name, rating FROM reviewers
JOIN reviews
	ON reviewers.id = reviews.reviewer_id
    ORDER BY reviewers.id;

SELECT title AS unreviewed_series FROM series
LEFT JOIN reviews
	 ON series.id = reviews.series_id
     WHERE rating IS NULL;

SELECT 	genre, 
		Round(AVG(rating), 2) AS avg_rating FROM series 
JOIN reviews 
	ON series.id = reviews.series_id
    GROUP BY genre
    ORDER BY genre;

SELECT 
	first_name, 
    last_name, 
    COUNT(rating) AS COUNT, 
    IFNULL(MIN(rating), 0) AS MIN, 
    IFNULL(MAX(rating), 0) AS MAX, 
    ROUND(IFNULL(AVG(rating), 2), 0) AS AVG,
    CASE 
		WHEN COUNT(rating) >= 1 THEN "ACTIVE"
        ELSE "INACTIVE"
	END AS STATUS
FROM reviewers
LEFT JOIN reviews
	ON reviewers.id = reviews.reviewer_id
    GROUP BY reviewers.id;

SELECT 
	title, 
    rating, 
    CONCAT(first_name, " ", last_name) AS reviewer 
FROM reviewers
JOIN reviews
	ON reviewers.id = reviews.reviewer_id
JOIN series
	ON series.id = reviews.series_id
ORDER BY series.title;
	