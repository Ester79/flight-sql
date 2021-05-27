SELECT * FROM usairlineflights.flights;

/*Exercise 1*/
SELECT COUNT(flightID) 
FROM usairlineflights.flights;


/*Exercise 2*/
SELECT 
	   Origin,
	   AVG(ArrDelay) AS prom_arribades, 
	   AVG(DepDelay) AS prom_sortides
FROM flights
GROUP BY Origin;


/*Exercise 3*/
SELECT origin, colYear, colMonth, AVG(ArrDelay) AS promig_arribades
FROM flights
GROUP BY colYear, colMonth, origin
order by origin, colYear, colMonth asc;


/*Exercise 4*/
SELECT usairports.city, flights.colYear, flights.colMonth, AVG(flights.ArrDelay) AS prom_arribades
FROM flights
INNER JOIN usairports
ON flights.origin = usairports.IATA
GROUP BY colYear, colMonth, City
ORDER BY City, colYear, colMonth ASC;


/*Exercise 5*/
SELECT UniqueCarrier, colYear, colMonth, COUNT(Cancelled) AS Total_Cancelled
FROM flights
WHERE Cancelled = 1
GROUP BY UniqueCarrier, colYear, colMonth
ORDER BY Total_Cancelled DESC, colMonth, colYear;


/*Exercise 6*/
SELECT TailNum, SUM(Distance) AS Total_Distance
FROM flights
WHERE TailNum IS NOT NULL
GROUP BY TailNum
ORDER BY Total_Distance DESC
LIMIT 10;


/*Exercise 7*/
SELECT UniqueCarrier, AVG(ArrDelay) AS avgDelay
FROM flights
GROUP BY UniqueCarrier
HAVING avgDelay > 10.0
ORDER BY avgDelay DESC;







