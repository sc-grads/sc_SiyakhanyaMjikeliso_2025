SELECT url , contents,username
FROM COMMENTS
JOIN photos on photos.id = comments.photo_id
JOIN users on users.id = comments.user_id AND users.id = photos.user_id;