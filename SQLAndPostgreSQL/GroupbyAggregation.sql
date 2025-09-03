select photo_id, COUNT(*)
FROM COMMENTS
GROUP BY photo_id