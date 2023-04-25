Find all posts which were reacted to with a heart. For such posts output all columns from facebook_posts table.

Tables: facebook_reactions, facebook_posts

All required columns and the first 5 rows of the solution are shown

post_id	poster	post_text	post_keywords	post_date
1	1	Lebron James is top class.	[basketball,lebron_james,nba]	2019-01-02

facebook_reactions

poster: int
friend: int
reaction: varchar
date_day: int
post_id: int

facebook_posts

post_id: int
poster: int
post_text: varchar
post_keywords: varchar
post_date: datetime


SELECT * FROM facebook_posts
WHERE post_id IN (
    SELECT post_id FROM facebook_reactions
    WHERE reaction = 'heart'
);