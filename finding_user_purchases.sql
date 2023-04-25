-- Write a query that'll identify returning active users. A returning active user is a user that has made a second purchase within 7 days of any other of their purchases. Output a list of user_ids of these returning active users.

-- Table: amazon_transactions

-- Expected output:
-- user_id
-- 100
-- 103
-- 105
-- 109
-- 110


-- amazon_transactions

-- id: int
-- user_id: int
-- item: varchar
-- created_at: datetime
-- revenue: int


SELECT DISTINCT(a.user_id) 
FROM amazon_transactions a
JOIN amazon_transactions b
ON a.user_id = b.user_id
WHERE a.created_at - b.created_at BETWEEN 0 AND 7
AND a.id != b.id;
