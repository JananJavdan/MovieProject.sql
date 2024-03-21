CREATE TABLE movie_languages (
    movie_id INT,
    language_id INT,
    PRIMARY KEY (movie_id, language_id),
    FOREIGN KEY (movie_id) REFERENCES movie (movie_id),
    FOREIGN KEY (language_id) REFERENCES language (language_id)
);
INSERT INTO movie_languages (movie_id, language_id)
VALUES (1, 1),
       (1,2),
       (2, 1),
       (3, 3);

INSERT INTO movie_languages (movie_id, language_id)
values (1, 3)
ON DUPLICATE KEY UPDATE language_id = 3;