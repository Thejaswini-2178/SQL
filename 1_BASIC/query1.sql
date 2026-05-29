-- 1.select
-- SELECT * FROM  mydatabase.customers;
-- select id,score from mydatabase.customers;

--  2.WHERE--
-- SELECT * FROM mydatabase.customers WHERE score=750
-- SELECT id,first_name,score FROM mydatabase.customers WHERE score>=500
-- SELECT id,country,score FROM mydatabase.customers WHERE country="uk"


-- 3.ORDER: if we not spasify the order it will take the default is asc without throwing any error
-- SELECT * FROM mydatabase.customers ORDER BY score DESC;
-- SELECT * FROM mydatabase.customers ORDER BY first_name asc;
-- SELECT id,country FROM mydatabase.customers ORDER BY country asc

-- 4.NESTED(ORDER BY):exicuting the multipul lines of qurie in orer by clause
    /*note: if any repitations are theri and need to sort it it will first sort it and mentin the order in the original database by mention in the order why it only ther 
    coloum order is crusial:any repatitions means we insert it first and use with the help of second coloum we can make the perfect sort*/
   /* QS :sort the country by highest score*/
-- SELECT * FROM  mydatabase.customers ORDER BY country ASC,score DESC;
-- SELECT * FROM  mydatabase.customers ORDER BY score DESC,country ASC; -- so it doesnt make any sense right  only score is sorted not the countrt too
    /*sort the 2 string like country,name */
-- SELECT id,country,first_name from  mydatabase.customers ORDER BY country ASC, first_name DESC;

-- 5.GROUP BY:aggrigating the data
--  SELECT country from  mydatabase.customers GROUP BY country;
    /* QS: total score by the country and also score diff in countr*/
-- select 
-- country,    /*--it is not aggregated--*/
-- sum(score) as Total_score,     /*-- it is aggrigated--*/
-- max(score)- min(score) as difference    /*--it is also aggregated --*/
-- From myDatabase.customers
-- GROUP BY country
   /* QS: total score and toatal customers of each country*/
-- select 
-- country,
-- count(first_name) as no_of_cust,
-- sum(score) as total_score
-- from mydatabase.customers
-- GROUP BY country
   
   
-- -- /*Q.S : avg score in the germanuy*/
--    SELECT 
--    country,
--    AVG (score)
--    FROM mydatabase.customers
--    WHERE country='germany'
--    GROUP BY country;


-- -- /*qs: find the max and min score along withe the country and id*/
-- SELECT
-- id,
-- country,
-- score
-- FROM mydatabase.customers
-- WHERE score=( SELECT max(score) as max_score from mydatabase.customers ) 
-- or score=(SELECT min(score) as min_score from mydatabase.customers)


/*6 . HAVING */

-- -- /* Q.S : IF ANY REPEATE COUNTRY THEN COUNT IT ALONG WITH SUM SCORE */
-- SELECT
-- country, 
-- count(id),
-- count(country),
-- sum(score)
-- FROM mydatabase.customers
-- GROUP BY country
-- Having count(country)=2;

-- /*  qs: Find the average score for each country
--    and return only those countries with an average score greater than 430 */
--    select 
--    country,
--    avg(score) as avg_score
--    FROM mydatabase.customers
--    GROUP BY country
--    having avg(score>430)

-- /*  qs: Find the average score for each country
--    considering only customers with a score not equal to 0
--    and return only those countries with an average score greater than 430 */
--    select 
--    first_name,
--    country,
--    avg(score) as avg_score
--    FROM mydatabase.customers
--    WHERE score !=0
--    GROUP BY first_name,country 
--    having avg(score)>430 


/*DISTINCT --- will remove the dupi=licates */
-- note: dont allows "*"
--  without duplicates it doesnt through error insted of that it will dispalys the entire tabe 
-- at distict only take the duplicate coloumn ,wihtout duplicate of colum wont take , 
-- if 2 columes we want  but one colume have the duplicates and another one is not means it wont wrap or rmove the desticnt column so muts snd shold reqire the duplicates.
-- SELECT DISTINCT country FROM mydatabase.customers

-- the below one is example it wont distinct it whows all colums as it is
-- SELECT 
-- DISTINCT country ,score
-- FROM mydatabase.customers;


/* Top or limit: selets the  or ristrict the no of columes that want ot retun in the  top 
 select top 3 *from mydatabase.customers */
-- select * from mydatabase.customers ORDER BY score DESC LIMIT 3;
-- select * from mydatabase.customers  order by country LIMIT 2;


/* cool sql technique*/
-- select 1 as id, 
-- 'hima' as user_name,
-- 'india' as  place;

-- SELECT id,first_name,"new_customer" as customer_type FROM mydatabase.customers ;

-- select * from mydatabase.customers



/* ORDER OF ALL THIS BASICES COVERING  code*/
SELECT 
country,
count(first_name) as customer_count,
first_name
from myDatabase.customers
WHERE first_name like "M%"
GROUP BY  country,first_name
-- having count(first_name)>=2
ORDER BY customer_count DESC
limit 3;








    















 


