use moviedb;
CREATE TABLE person (
    person_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    amount DECIMAL(10, 2),
    gender_id INT
);

INSERT INTO person (name, amount, gender_id)
VALUES ('Samuel L. Jackson', 67, 1),
       ('Robert De Niro', 57, 1),
       ('Bruce Willis', 51, 1),
       ('Matt Damon', 48, 1),
       ('Morgan Freeman', 46, 1);

