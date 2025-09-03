select photo_id, count(*)
FROM COMMENTS
WHERE photo_id <3
GROUP BY photo_id
HAVING count(*)>2;