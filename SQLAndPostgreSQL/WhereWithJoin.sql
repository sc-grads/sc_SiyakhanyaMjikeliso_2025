SELECT url , contents
FROM COMMENTS
JOIN photos on photos.id = comments.photo_id
WHERE comments.user_id = photos.user_id