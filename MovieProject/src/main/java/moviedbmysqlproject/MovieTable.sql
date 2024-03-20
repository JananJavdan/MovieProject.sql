use moviedb;
CREATE TABLE movie (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    runtime INT,
    release_date DATE,
    revenue DECIMAL(10, 2),
    genre VARCHAR(100),
    keyword_id INT,
    FOREIGN KEY (keyword_id) REFERENCES keyword(keyword_id)

);
ALTER TABLE movie
    ADD COLUMN vote_average DECIMAL(3, 1);


INSERT INTO movie (title, runtime, release_date, revenue, genre)
VALUES ('The Shawshank Redemption', 142, '1994-09-23', 28.34, 'Drama'),
       ('The Godfather', 175, '1972-03-24', 134.97, 'Crime'),
       ('The Dark Knight', 152, '2008-07-18', 1004.56, 'Action'),
       ('Pulp Fiction', 154, '1994-10-14', 213.93, 'Crime'),
       ('Forrest Gump', 142, '1994-07-06', 678.16, 'Drama'),
       ('The teen Matrix', 136, '1999-03-31', 463.52, 'Action'),
       ('Inception', 148, '2010-07-16', 829.91, 'Sci-Fi');

-- 1
SELECT * FROM movie WHERE runtime > 120;
-- 2
SELECT * FROM movie WHERE title LIKE '%teen%';
-- 3
SELECT DISTINCT vote_average FROM movie;
-- 4
SELECT title,
       revenue AS revenue_in_euro,
       revenue * 1.11 AS revenue_in_pounds
FROM movie;

-- 11 . Toon alle movies die langer zijn dan de gemiddelde lengte van alle
-- movies. Rangschik het resultaat alfabetisch volgens title

SELECT title
FROM movie
WHERE runtime > (
    SELECT AVG(runtime)
    FROM movie
    WHERE runtime >= 90
)
ORDER BY title ASC;






