use moviedb;
CREATE TABLE cast (
    cast_id INT PRIMARY KEY,
    movie_id INT,
    actor_name VARCHAR(255),
    gender_id INT,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)

);

INSERT INTO cast (cast_id, movie_id, actor_name, gender_id)
VALUES (1, 1, 'Samuel L. Jackson', 1),
       (2, 1, 'Robert De Niro', 2),
       (3, 2, 'Bruce Willis', 1),
       (4, 2, 'Matt Damon', 2),
       (5, 3, 'Morgan Freeman', 1);



