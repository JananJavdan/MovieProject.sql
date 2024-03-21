use moviedb;
CREATE TABLE user (
    usr_id INT,
    login VARCHAR(50),
    email VARCHAR(255)
);
-- 12. Voeg de volgende user toe aan de tabel usr:

INSERT INTO user (usr_id, login, email)
VALUES (1, 'rincewind', 'rincewind@discworld.org');

-- 13. Voeg nu de volgende users toe aan de tabel usr met 1 query: (copy/paste ftw)

INSERT INTO user (usr_id, login, email)
VALUES (2, 'Bursar', 'bursar@unseen.university'),
       (3, 'archchancellor', 'arch@unseen.university');

-- 15. Rincewind is geaccepteerd aan de Unseen University. Pas zijn email adres aan. Nieuw email adres:

UPDATE user
SET email = 'rincewind@unseen.university'
WHERE login = 'rincewind';

