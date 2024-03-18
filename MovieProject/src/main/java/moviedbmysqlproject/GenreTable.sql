use moviedb;
CREATE TABLE genre (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE
);

INSERT INTO genre (name)
VALUES ('Action'),
       ('Drama'),
       ('Comedy');

