CREATE VIEW tags as (
	select id,created_at,user_id,post_id, 'photo_tag' as type from photo_tags
	union all
	select id,created_at,user_id,post_id, 'caption_tag' as type from caption_tags

);

select * from tags
where type = 'caption_tag'