-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name
FROM users
ORDER BY last_name;



-- Exercise 4
SELECT id, image_url, user_id
FROM posts
WHERE user_id=26;



-- Exercise 5
SELECT id, image_url, user_id
FROM posts
WHERE user_id=26 OR user_id=12;



-- Exercise 6
SELECT COUNT(*) FROM posts;



-- Exercise 7
SELECT user_id, count(user_id)
FROM posts
GROUP BY user_id
ORDER BY count(user_id) desc;



-- Exercise 8
SELECT posts.id, posts.image_url, posts.user_id, users.username, users.first_name, users.last_name
FROM posts
INNER JOIN users ON posts.user_id=users.id
WHERE users.id=12 OR users.id=26;



-- Exercise 9
SELECT posts.id, posts.pub_date, following.following_id
FROM posts
INNER JOIN following ON posts.user_id=following.following_id
WHERE following.user_id=26;



-- Exercise 10
SELECT posts.id, posts.pub_date, following.following_id, users.username
FROM posts
INNER JOIN following ON posts.user_id = following.following_id
INNER JOIN users ON posts.user_id=users.id
WHERE following.user_id=26
ORDER BY posts.pub_date desc;



-- Exercise 11
INSERT INTO bookmarks(user_id, post_id, timestamp) VALUES (26, 219, current_timestamp);
INSERT INTO bookmarks(user_id, post_id, timestamp) VALUES (26, 220, current_timestamp);
INSERT INTO bookmarks(user_id, post_id, timestamp) VALUES (26, 221, current_timestamp);



-- Exercise 12
DELETE FROM bookmarks WHERE user_id=26 AND post_id=219;
DELETE FROM bookmarks WHERE user_id=26 AND post_id=220;
DELETE FROM bookmarks WHERE user_id=26 AND post_id=221;



-- Exercise 13
UPDATE users SET email = 'knick2022@gmail.com' WHERE id=26;
