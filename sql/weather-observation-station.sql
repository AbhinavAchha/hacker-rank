-- https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=true
select distinct city from station where id%2=0;

-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true
select count(city) - count(distinct city) from station;

-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
select city, length(city) from station order by length(city), city limit 1;
select city, length(city) from station order by length(city) desc, city limit 1;

-- https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true
select distinct city from station where city like 'a%' or city like 'e%' or city like 'i%' or city like 'o%' or city like 'u%';
--';

-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true
select distinct city from station where city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u';
-- or 
select distinct city from station where left(city,1) in ('a','e','i','o','u');

-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true
select city from station where left(city, 1) in ('a', 'e', 'i', 'o', 'u') and right(city, 1) in ('a', 'e', 'i', 'o', 'u');

-- https://www.hackerrank.com/challenges/weather-observation-station-9/problem?isFullScreen=true 
select distinct city from station where left(city, 1) not in ('a', 'e', 'i', 'o', 'u'); 

-- https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=true
select distinct city from station where right(city, 1) not in ('a', 'e', 'i', 'o', 'u');

-- https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=true
select distinct city from station where left(city, 1) not in ('a', 'e', 'i', 'o', 'u') and right(city, 1) not in ('a', 'e', 'i', 'o', 'u');
-- or 
select distinct city from station where not( left(city, 1) in ('a', 'e', 'i', 'o', 'u') and right(city, 1) in ('a', 'e', 'i', 'o', 'u'));

-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-12/problem?isFullScreen=true
select distinct city from station where left(city, 1) not in ('a', 'e', 'i', 'o', 'u') and right(city, 1) not in ('a', 'e', 'i', 'o', 'u');




