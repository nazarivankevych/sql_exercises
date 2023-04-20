-- Count the number of movies that Abigail Breslin nominated for oscar

-- Count the number of movies that Abigail Breslin was nominated for an oscar.
-- Table: oscar_nominees

-- oscar_nominees

-- year: int
-- category: varchar
-- nominee: varchar
-- movie: varchar
-- winner: bool
-- id: int

SELECT COUNT(*) AS count
FROM oscar_nominees
WHERE nominee = 'Abigail Breslin';