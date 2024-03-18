use moviedb;
CREATE TABLE message (
    msg_id INT AUTO_INCREMENT,
    message VARCHAR(255),
    user_id INT NOT NULL ,
    receiver_id  INT NOT NULL,
    PRIMARY KEY (msg_id)

);
ALTER TABLE message
    MODIFY COLUMN message VARCHAR(500);

INSERT INTO message (message, user_id, receiver_id)
VALUES (
           'Archchancelor: "Bursar?" Bursar: "Yes, Archchancellor?"
Archchancelor: "You aren\'t a member of some secret society or somethin\',
are you?" Bursar: "Me? No, Archchancellor." Archchancelor:
"Then it\'d be a damn good idea to take your underpants off your head."',
           3,
           2
       );

