use moviedb;
CREATE TABLE keyword (
    keyword_id INT AUTO_INCREMENT PRIMARY KEY,
    keyword VARCHAR(100) UNIQUE
);

INSERT INTO keyword (keyword)
VALUES ('space opera');


-- 7 Toon alle unieke filmen die ‘space opera’ als keyword
-- hebben, maar die NIET ‘star’ in de movie title hebben



