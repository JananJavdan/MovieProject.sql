use moviedb;
CREATE TABLE language (
    language_id INT PRIMARY KEY ,
    language_name VARCHAR(50)

);

INSERT INTO language (language_id, language_name)
VALUES (1, 'Engels'),
       (2, 'Spanish'),
       (3, 'French'),
       (4, 'German');


