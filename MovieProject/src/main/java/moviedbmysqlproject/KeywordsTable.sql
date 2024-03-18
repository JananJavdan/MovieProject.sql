use moviedb;
CREATE TABLE keyword (
    keyword_id INT AUTO_INCREMENT PRIMARY KEY,
    keyword VARCHAR(100) UNIQUE
);

INSERT INTO keyword (keyword)
VALUES ('action'),
       ('drama'),
       ('comedy');
