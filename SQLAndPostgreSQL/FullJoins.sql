select username, url
FROM photos
FULL JOIN users on users.id =photos.user_id;