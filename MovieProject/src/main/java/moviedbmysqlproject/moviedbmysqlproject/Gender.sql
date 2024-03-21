CREATE TABLE gender (
    gender_id INT PRIMARY KEY ,
    person_id INT,
    gender_name VARCHAR (10),
    FOREIGN KEY (person_id) REFERENCES person (person_id)
);
INSERT INTO gender (gender_id, person_id, gender_name)
values (1, 1, 'Male'),
       (2, 2, 'Male'),
       (1, 3, 'Male'),
       (2, 4, 'Male'),
       (1, 5, 'Female');