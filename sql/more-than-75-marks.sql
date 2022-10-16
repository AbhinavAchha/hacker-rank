-- Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
-- https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true
select name from students where marks > 75 order by right(name, 3), id;

-- https://www.hackerrank.com/challenges/name-of-employees/problem?isFullScreen=true
select name from employee order by name;

-- https://www.hackerrank.com/challenges/salary-of-employees/problem?isFullScreen=true
select name from employee where salary > 2000 and months < 10 order by employee_id asc;

-- Write a query to print all prime numbers less than or equal to 1000. Print your result on a single line, and use the ampersand (&) character as your separator (instead of a space).
-- https://www.hackerrank.com/challenges/print-prime-numbers/problem?isFullScreen=true



