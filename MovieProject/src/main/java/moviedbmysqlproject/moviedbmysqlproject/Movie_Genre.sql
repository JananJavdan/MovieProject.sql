CREATE TABLE movie_genre (
    movie_id INT,
    genre_id INT,
    PRIMARY KEY (movie_id, genre_id),
    FOREIGN KEY (movie_id) REFERENCES movie (movie_id),
    FOREIGN KEY (genre_id) REFERENCES genre (genre_id)
);
INSERT INTO movie_genre (movie_id, genre_id)
VALUES (1, 1),
       (1, 2),
       (2, 3),
       (3, 1);