use moviedb;
CREATE TABLE language (
    language_id INT AUTO_INCREMENT,
    language VARCHAR(50),
    PRIMARY KEY (language_id)
);

INSERT INTO language (language)
VALUES ('Engels'),
       ('Spanish'),
       ('French'),
       ('German');

--6 Toon movie titles met meer dan 2talen
SELECT movie.title
FROM movie
         JOIN languages  ON movie_id = movie_id
GROUP BY movie.title
HAVING COUNT(DISTINCT language) > 1;
