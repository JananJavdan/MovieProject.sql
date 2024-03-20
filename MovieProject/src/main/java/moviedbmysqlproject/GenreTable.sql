use moviedb;
CREATE TABLE genre (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE
);

INSERT INTO genre (name)
VALUES ('Action'),
       ('Drama'),
       ('Comedy'),
       ('Crime'),
       ('Sci-Fi');

-- 8
SELECT * FROM movie WHERE genre = 'Horror';
-- 9
SELECT DISTINCT genre FROM movie WHERE genre IS NULL ;

-- 10 . Toon de top 5 person met de meeste "movies".
SELECT Person.name, COUNT(*) AS amount
FROM Person
         JOIN cast  ON Person.person_id = cast.person_id
GROUP BY Person.name
LIMIT 5;


