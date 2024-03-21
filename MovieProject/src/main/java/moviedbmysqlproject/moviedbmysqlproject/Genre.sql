use moviedb;
CREATE TABLE genre (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(50)
);

INSERT INTO genre (genre_id, genre_name)
VALUES (1, 'Action'),
       (2, 'Drama'),
       (1, 'Comedy'),
       (2, 'Crime'),
       (1, 'Sci-Fi');




