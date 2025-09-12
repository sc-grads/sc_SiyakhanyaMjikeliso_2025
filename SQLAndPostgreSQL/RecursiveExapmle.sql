with recursive suggestion(leader_id, follower_id,depth) as (
	select leader_id, follower_id,1 as depth
	from followers
	where follower_id = 1000
	union
	select followers.leader_id, followers.follower_id, depth + 1
	from followers
	join suggestion on suggestion.leader_id = followers.follower_id
	where depth < 3

)
SELECT DISTINCT users.id, users.username
from suggestion
join users on users.id = suggestion.leader_id
where depth > 1
limit 30;