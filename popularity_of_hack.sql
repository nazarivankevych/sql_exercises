-- Meta/Facebook has developed a new programing language called Hack.To measure the popularity of Hack they ran a survey with their employees. The survey included data on previous programing familiarity as well as the number of years of experience, age, gender and most importantly satisfaction with Hack. Due to an error location data was not collected, but your supervisor demands a report showing average popularity of Hack by office location. Luckily the user IDs of employees completing the surveys were stored.
-- Based on the above, find the average popularity of the Hack per office location.
-- Output the location along with the average popularity.

-- Tables: facebook_employees, facebook_hack_survey

-- location	    avg_popularity
-- India	        7.5
-- Switzerland	    1
-- UK	            4.333
-- USA	            4.6

-- Use the function AVG() to find the average popularity.
-- Use a LEFT OUTER JOIN on the id and employee id columns to combine records from both datasets.
-- Group records by the location.

-- facebook_employees

-- id: int
-- location: varchar
-- age: int
-- gender: varchar
-- is_senior: bool

-- facebook_hack_survey
-- employee_id: int
-- age: int
-- gender: varchar
-- popularity: int

SELECT e.location, AVG(h.popularity) AS avg_popularity
FROM facebook_employees AS e
LEFT OUTER JOIN facebook_hack_survey AS h
ON e.id = h.employee_id
GROUP BY e.location;