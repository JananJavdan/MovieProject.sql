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
VALUES (1, 1, 'Red'),        -- Samuel L. Jackson in The Shawshank Redemption
       (1, 2, 'Andy Dufresne'); -- Robert De Niro in The Shawshank Redemption


