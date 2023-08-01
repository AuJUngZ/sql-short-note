-- we can you these function to access n char from left or right
right("string" , 3) ---> ing
left("string" , 3) ---> str

-- we can calculate COUNT on query
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;
-- Let find the number of CITY entries in STATION, and NUMunique be the number of unique cities. Query the value of NUM−NUMunique from STATION.




-- we can UNOIN two query to get one result
-- Query the two cities in STATION with the shortest and longest CITY names,
select city, length(city) from station order by length(city) DESC,city ASC fetch first row only UNION
select city, length(city) from station order by length(city) asc ,city asc fetch first row only;
-- notice we can use fetch first row to get first row
-- notice we can use fetch last row to get last row
-- notice we can use length("string") to get length of string ---> 6




-- substring
SELECT SUBSTRING('SQL Tutorial', 1, 3) AS ExtractString; --> output : SQL
-- notice sql start counting from 1

-- lower
SELECT LOWER(SUBSTRING('SQL Tutorial', 1, 3)) AS ExtractString; --> output : sql

-- LIMIT
LIMIT 3 --> OUTPUT should be only 3 rows.
-- tricky LINIT offset , count 
LIMIT 0,2 --> OUTPUT should be first two rows.
LIMIT 50,1 --> OUTPUT should be row's 50 of query result.