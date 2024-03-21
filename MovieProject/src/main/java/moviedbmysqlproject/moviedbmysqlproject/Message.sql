use moviedb;
CREATE TABLE message (
    msg_id INT AUTO_INCREMENT,
    message VARCHAR(255),
    user_id INT NOT NULL ,
    receiver_id  INT NOT NULL,
    PRIMARY KEY (msg_id)
);

INSERT INTO message
VALUES (1,'Archchancelor: "Bursar?"',3, 2),
       (2,' Bursar: "Yes, Archchancellor?"',2,3),
       (3,' Archchancelor: "You aren''t a member of some
         secret society or somethin'', are you?"',3,2),
       (4,'Bursar: "Me? No, Archchancellor." ', 2, 3),
       (5, 'Archchancelor: "Thenit''d be a damn good idea to take your
         underpants off your head”.*', 3, 2);
