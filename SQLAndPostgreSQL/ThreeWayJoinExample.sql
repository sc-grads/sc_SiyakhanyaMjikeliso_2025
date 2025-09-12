--Left Join 
CREATE MATERIALIZED VIEW weekly_likes as (
SELECT 
	date_trunc('week',coalesce(posts.created_at, comments.created_at)) as week, count(posts.id)
	as num_likesPosts, count(comments.id) as num_likesComments
FROM likes
left join posts on posts.id = likes.post_id
left join comments on comments.id = likes.comment_id
GROUP BY week
order by week
) with data;

select * from weekly_likes

delete from posts
where created_at < '2010-02-01'

--Update materialized view
refresh materialized view weekly_likes