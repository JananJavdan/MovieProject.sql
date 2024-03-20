use moviedb;
CREATE TABLE user (
    usr_id INT,
    login VARCHAR(50),
    email VARCHAR(255)
);

INSERT INTO user (usr_id, login, email)
VALUES (1, 'rincewind', 'rincewind@discworld.org');

INSERT INTO user (usr_id, login, email)
VALUES (2, 'Bursar', 'bursar@unseen.university'),
       (3, 'archchancellor', 'arch@unseen.university');

-- 15 pas email address
UPDATE user
SET email = 'rincewind@unseen.university'
WHERE login = 'rincewind';

