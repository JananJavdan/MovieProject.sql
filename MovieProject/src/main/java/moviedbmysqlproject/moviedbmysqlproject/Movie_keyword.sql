CREATE TABLE movie_keyword (
    movie_id INT,
    keyword_id INT,
    PRIMARY KEY (movie_id, keyword_id),
    FOREIGN KEY (movie_id) REFERENCES movie (movie_id),
    FOREIGN KEY (keyword_id) REFERENCES keyword (keyword_id)
);
INSERT INTO movie_keyword (movie_id, keyword_id)
VALUES (1, 1),
       (1, 2),
       (2, 3),
       (3, 4);