create database dmart;

use dmart;

select * from dmart;

SHOW COLUMNS FROM dmart;

ALTER TABLE dmart 
CHANGE COLUMN `ï»¿Order ID` `Order ID` TEXT;

SELECT SUM(`Profit`) from dmart;
SELECT AVG(`Profit`) from dmart;

SELECT SUM(`Sales`) from dmart;
SELECT AVG(`Sales`) from dmart;

SELECT SUM(`Sales`) as 'Sales', Category from dmart 
GROUP BY Category;

SELECT SUM(`Sales`) as 'Sales', Region from dmart 
GROUP BY Region;

SELECT SUM(`Sales`) as 'Sales', ROUND(SUM(`Profit`),2) as 'Profit', Year from dmart 
GROUP BY Year;

SELECT SUM(`Sales`) as 'Sales', Category from dmart 
GROUP BY Category 
ORDER BY SUM(`Sales`) DESC
LIMIT 5;

SELECT SUM(`Sales`) as 'Sales', ROUND(SUM(`Profit`),2) as 'Profit', City from dmart
GROUP BY City
ORDER BY 'Profit' DESC
LIMIT 5;

SELECT Year, Month, SUM(`Sales`) as Sales, ROUND(SUM(`Profit`),2) as Profit from dmart
GROUP BY Year, Month 
ORDER BY YEAR, FIELD(Month, 
    'January','February','March','April','May','June',
    'July','August','September','October','November','December');



