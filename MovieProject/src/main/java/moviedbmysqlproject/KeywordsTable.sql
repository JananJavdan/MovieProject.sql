use moviedb;
CREATE TABLE keyword (
    keyword_id INT AUTO_INCREMENT PRIMARY KEY,
    keyword VARCHAR(100) UNIQUE
);

INSERT INTO keyword (keyword)
VALUES ('action'),
       ('drama'),
       ('comedy');

--7 Toon alle unieke filmen die ‘space opera’ als keyword
-- hebben, maar die NIET ‘star’ in de movie title hebben
SELECT DISTINCT m.title
FROM movie m
       JOIN keywords k ON m.movie_id = k.movie_id
       WHERE k.keyword = 'space opera'
       AND NOT m.title LIKE '%star%';
