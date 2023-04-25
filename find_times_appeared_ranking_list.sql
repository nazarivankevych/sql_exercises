Find how many times each artist appeared on the Spotify ranking list
Output the artist name along with the corresponding number of occurrences.
Order records by the number of occurrences in descending order.

Table: spotify_worldwide_daily_song_ranking

All required columns and the first 5 rows of the solution are shown

artist	            n_occurences
Kendrick Lamar	        9
Ed Sheeran	            5
Migos	                2
Wisin	                2
The Chainsmokers	    2

Use the COUNT() function to find the number of occurrences.
Group records by the artist.

spotify_worldwide_daily_song_ranking

id: int
position: int
trackname: varchar
artist: varchar
streams: int
url: varchar
date: datetime
region: varchar


SELECT artist, COUNT(*) AS n_occurences
FROM spotify_worldwide_daily_song_ranking
GROUP BY artist
ORDER BY n_occurences DESC;