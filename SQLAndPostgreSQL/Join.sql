select contents, username 
FROM COMMENTS 
JOIN users on users.id =comments.user_id;

select contents, url 
FROM COMMENTS 
JOIN photos on photos.id =comments.user_id;