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

-- 10
SELECT p.person_name, COUNT(*) AS amount
FROM person p
         JOIN cast c ON p.person_id = c.person_id
GROUP BY p.person_name
ORDER BY amount DESC
    LIMIT 5;


