-- SELECT basics
SELECT population FROM world
  WHERE name = 'Germany';
  
  SELECT name, population FROM world
  WHERE name IN ('Ireland', 'Iceland', 'Denmark');
  
  SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000;
  
  -- SELECT names
  SELECT name FROM world
  WHERE name LIKE 'Y%';
  
  SELECT name FROM world
  WHERE name LIKE '%y';
  
  SELECT name FROM world
  WHERE name LIKE '%x%';
  
  SELECT name FROM world
  WHERE name LIKE '%land';
  
  SELECT name FROM world
  WHERE name LIKE 'C%ia';
  
  SELECT name FROM world
  WHERE name LIKE '%oo%';
  
  SELECT name FROM world
  WHERE name LIKE '%a%a%a%';
  
  SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name;

SELECT name FROM world
 WHERE name LIKE '%o__o%';
 
 SELECT name FROM world
 WHERE name LIKE '____';
 
 --Harder
 
 SELECT name
  FROM world
 WHERE name = capital;
 
 SELECT name
  FROM world
 WHERE capital = concat(name, ' City');
 
 SELECT capital, name
FROM world
WHERE capital LIKE concat( '%', name, '%');

SELECT name, capital FROM world
WHERE capital LIKE concat(name, '_%');

SELECT name, REPLACE(capital, name, '') AS extension FROM world
WHERE capital LIKE concat(name, '_%');



-- SELECT from WORLD

SELECT name, continent, population FROM world;

SELECT name FROM world
WHERE population>200000000;

SELECT name, GDP/population FROM world
WHERE population>200000000;

SELECT name, population/1000000
FROM world
WHERE continent = 'South America';

SELECT name, population FROM world
WHERE name IN ('France', 'Germany', 'Italy');

SELECT name country
FROM world
WHERE name LIKE '%United%';

SELECT name, population, area FROM world
WHERE population>250000000 OR area>3000000;

SELECT name, population, area FROM world
WHERE population>250000000 XOR area>3000000;

SELECT name, ROUND(population/1000000, 2), ROUND(GDP/1000000000, 2) FROM world
WHERE continent = 'South America';

SELECT name, ROUND(gdp/population, -3)
FROM world
WHERE gdp > 1000000000000;

--SELECT from NOBEL

SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;
 
 SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature';
   
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein';

SELECT winner
FROM nobel
WHERE subject = 'Peace'
AND yr >=2000;

SELECT yr, subject, winner 
FROM nobel
WHERE subject = 'Literature'
AND yr BETWEEN 1980 AND 1989;

SELECT * FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson',
'Jimmy Carter' );

SELECT winner 
FROM nobel
WHERE winner LIKE ('John%');

SELECT *
FROM nobel 
WHERE subject = 'Physics' AND yr = 1980
UNION
SELECT * 
FROM nobel 
WHERE subject = 'Chemistry' AND yr = 1984;

SELECT *
FROM nobel
WHERE yr = '1980'
AND subject NOT IN ('Chemistry', 'Medicine');

SELECT *
FROM nobel 
WHERE subject = 'Medicine' AND yr < 1910
UNION
SELECT * 
FROM nobel 
WHERE subject = 'Literature' AND yr >= 2004;
   

 
 
