use moviedb;
CREATE TABLE movie (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255),
    length_minutes INT,
    vote_average DECIMAL(3,2),
    revenue_euro DECIMAL(10, 2)



);


INSERT INTO movie (movie_id, title, length_minutes, vote_average, revenue_euro)
VALUES (1, 'The Shawshank Redemption', 142, 7.5, 28.34),
       (2, 'The Godfather', 175, 6.8, 134.97),
       (3, 'The Dark Knight', 152, 5.3, 1004.56),
       (4, 'Pulp Fiction', 154, 7.3, 213.93),
       (5, 'Forrest Gump', 142, 3.8, 678.16);









