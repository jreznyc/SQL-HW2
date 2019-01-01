DROP TABLE IF EXISTS videos;
CREATE TABLE videos(id int, title varchar(50), length decimal, url varchar(100));
INSERT INTO videos VALUES(1 , "How To Make Fire With A LEMON" , 3.63 , "https://www.youtube.com/watch?v=Bv2vT665bGI");
INSERT INTO videos VALUES(2 , "How To Make Homemade Eggnog" , 2.58 , "https://www.youtube.com/watch?v=P_s1ZXG_4VA");
INSERT INTO videos VALUES(3 , "How To Perform 10 Magic Tricks With Eggs" , 10, "https://www.youtube.com/watch?v=5okLnZB4QNY");

DROP TABLE IF EXISTS reviewers;
CREATE TABLE reviewers(rev_id int, vid_id int, usrname varchar(20), rating int, review varchar(100));
INSERT INTO reviewers VALUES(1, 1 , "daffy" , 5 , "the best!");
INSERT INTO reviewers VALUES(2, 1 , "bugs" , 4 , "loved it");
INSERT INTO reviewers VALUES(3, 3 , "wileycoyote" , 1, "acme's the worst");
INSERT INTO reviewers VALUES(4, 3 , "mickey" , NULL, "its' good");

SELECT *
FROM videos
INNER JOIN reviewers
ON videos.id = reviewers.vid_id;
