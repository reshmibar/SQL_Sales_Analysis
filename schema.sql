CREATE DATABASE RESHMI;
USE RESHMI;
RENAME TABLE `SAMPLE SUPERSTORE DATA` TO Store;
SELECT * FROM Store limit 10;
# total sales #
SELECT 
    SUM(Sales) AS total_sales
FROM
    store

#how many records do u have in ur dataset?#
select count(*) as total_records
from Store;

SELECT COUNT(*) 
FROM store
WHERE Region = 'West';

#which region genarates highest sales# 

select Region,sum(Sales) as highest
from store group by region order by highest desc limit 1;

#which category genarates highest sales?
select Category,sum(Sales) as total_sales
from store group by Category order by total_sales desc limit 1;

#which segment contributes to most to sales?#

select Segment,sum(Sales) as total_sales
from store group by Segment order by total_sales desc limit 1;

#what are the top 5 sub-category by sales?#
SELECT 
    Sub_Category, SUM(Sales) AS total_sales
FROM
    store
GROUP BY Sub_Category
ORDER BY total_sales DESC
LIMIT 5;
#windows function use when Ranking along with all the rows#
Select * from (SELECT 
    Sub_Category, SUM(Sales) AS total_sales,
    rank() over(ORDER BY  sum(Sales) desc) as rnk
FROM
    store
GROUP BY Sub_Category)t
where rnk<=5;

#which categories are genarating high sales but low profit?
select Sub_Category,sum(sales) as total_sales,sum(Profit) as total_profit
from store 
group by Sub_Category
order by total_sales desc;



