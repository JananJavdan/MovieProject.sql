use moviedb;
CREATE TABLE language (
    language_id INT AUTO_INCREMENT,
    language_name VARCHAR(50),
    PRIMARY KEY (language_id)
);

INSERT INTO language (language_name)
VALUES ('Engels'),
       ('Spanish'),
       ('French'),
       ('German');
