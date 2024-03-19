use moviedb;
CREATE TABLE cast (
    cast_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT,
    person_id INT,
    character_name VARCHAR(255),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    FOREIGN KEY (person_id) REFERENCES person(person_id)
);

INSERT INTO cast (movie_id, person_id, character_name)
VALUES (1, 1, 'Samuel L. Jackson'),
       (2, 2, 'Robert De Niro'),
       (3, 3, 'Bruce Willis'),
       (4, 4, 'Matt Damon'),
       (5, 5, 'Morgan Freeman');

-- 5 Toon het aantal personen per gender_id
SELECT gender_id, COUNT(*) AS aantal_personen
FROM person
GROUP BY gender_id;


