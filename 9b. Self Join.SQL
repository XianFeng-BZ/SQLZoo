1. How many stops are in the database?

SELECT
   COUNT(*) 
FROM 
   stops;
   

2. Find the id value for the stop 'Craiglockhart'.

SELECT
   stops.id
FROM 
   stops
WHERE
   stops.name = 'Craiglockhart';
   

3. Give the id and the name for the stops on the '4' 'LRT' service.

SELECT
   stops.id, stops.name 
FROM 
   stops JOIN route ON stops.id = route.stop
WHERE 
   route.num = '4' AND route.company = 'LRT' 


4. The query shown gives the number of routes that visit either London Road (149) or Craiglockhart (53). 
Run the query and notice the two services that link these stops have a count of 2. 
Add a HAVING clause to restrict the output to these two routes.

SELECT 
   route.company, route.num, COUNT(*)
FROM 
   route 
WHERE 
   route.stop=149 OR route.stop=53
GROUP BY 
   route.company, route.num
HAVING 
   COUNT(*) > 1;
