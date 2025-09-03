select username, url
FROM photos
LEFT JOIN users on users.id =photos.user_id;