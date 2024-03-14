CREATE TABLE message (
    msg_id INT AUTO_INCREMENT,
    message VARCHAR(255),
    user_id INT NOT NULL ,
    receiver KEY INT NOT NULL,
    PRIMARY KEY (msg_id)

);
INSERT INTO message (message, user_id, receiver_id)
VALUES ('Archchancelor: "Bursar?" Bursar: "Yes, Archchancellor?" Archchancelor:'
    t a member of some secret society or somethin ', are you?" Bursar:' ||
    ' "Me? No, Archchancellor." Archchancelor: "Then it\'d be a damn good
    idea to take your underpants off your head;