use moviedb;
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

-- 5 Toon het aantal personen per gender_id
SELECT gender_id, COUNT(*) AS aantal_personen
FROM person
GROUP BY gender_id;

 -- 6 Toon movie titles met meer dan 2talen
SELECT movie.title
FROM movie
         JOIN language  ON movie_id = movie_id
GROUP BY movie.title
HAVING COUNT(DISTINCT language) > 1;

--  ? 7 Toon alle unieke filmen die ‘space opera’ als keyword
-- hebben, maar die NIET ‘star’ in de movie title hebben
SELECT DISTINCT m.title
FROM movie m
         LEFT JOIN keyword mk ON m.movie_id = m.keyword_id = mk.keyword_id
         LEFT JOIN keyword k ON mk.keyword_id = k.keyword_id
WHERE k.keyword = 'space opera'
  AND m.title NOT LIKE '%star%';

-- ? 8
SELECT * FROM movie WHERE genre = 'Horror';
-- 9
SELECT DISTINCT genre FROM movie WHERE genre IS NULL ;

-- 10 . Toon de top 5 person met de meeste "movies".
SELECT Person.name, COUNT(*) AS amount
FROM Person
         JOIN cast  ON Person.person_id = cast.person_id
GROUP BY Person.name
    LIMIT 5;

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
-- 12
INSERT INTO user (usr_id, login, email)
VALUES (1, 'rincewind', 'rincewind@discworld.org');

-- 13
INSERT INTO user (usr_id, login, email)
VALUES (2, 'Bursar', 'bursar@unseen.university'),
       (3, 'archchancellor', 'arch@unseen.university');

 -- 14
-- in de table user toegevoegd

-- 15 pas email address
UPDATE user
SET email = 'rincewind@unseen.university'
WHERE login = 'rincewind';

-- 16 . Verwijder alle messages
DELETE FROM message WHERE user_id = (SELECT usr_id FROM user WHERE login = 'Bursar');