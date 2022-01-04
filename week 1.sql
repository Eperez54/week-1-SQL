-- 1. Which destination in the flights database is the furthest distance away, based on information in the flights table. 
-- Show the SQL query(s) that support your conclusion.
	SELECT dest as Destination FROM flights WHERE distance > 0 ORDER BY distance DESC LIMIT 1;

-- 2. What are the different numbers of engines in the planes table? For each number of engines, which aircraft have 
--   the most number of seats? Show the SQL statement(s) that support your result.
	select engine, max(seats) as 'Seats'  from planes group by engine order by Seats desc;
       
-- 3. Show the total number of flights.
	select	count(flight) from flights;

-- 4. Show the total number of flights by airline (carrier).
	select	carrier, count(flight) as 'Total Flights' from flights group by carrier;

-- 5. Show all of the airlines, ordered by number of flights in descending order.
	select	carrier, count(flight) as 'Total Flights' from flights group by carrier order by 'Total Flights' desc;
    
-- 6. Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order.
	select	carrier, count(flight) as 'Total Flights' from flights group by carrier order by 'Total Flights' desc limit 5;
    
-- 7. Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of 
--    flights in descending order.
	select	carrier, count(flight) as 'Total Flights' from flights where distance >= '1000' group by carrier order by 'Total Flights' desc limit 5;
    
-- 8. Create a question that (a) uses data from the flights database, and (b) requires aggregation to answer it, and 
-- write down both the question, and the query that answers the question
-- What is the total amount of distance traveled by all the carriers
	select carrier, sum(distance) as 'Total Distance' from flights group by carrier  order by'Total Distance' desc;
    
-- what carrier traveled the most
	select carrier, sum(distance) as 'Total Distance' from flights group by carrier order by'Total Distance' desc limit 1;