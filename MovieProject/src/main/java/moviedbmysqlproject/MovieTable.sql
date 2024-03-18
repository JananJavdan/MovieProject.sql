use moviedb;
CREATE TABLE movie (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    runtime INT,
    release_date DATE,
    revenue DECIMAL(10, 2)
);

INSERT INTO movie (title, runtime, release_date, revenue)
VALUES ('The Shawshank Redemption', 142, '1994-09-23', 28.34);

