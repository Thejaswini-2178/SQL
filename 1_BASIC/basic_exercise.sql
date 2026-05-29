SELECT * FROM mydatabase.customers;

-- /* ORDER OF ALL THIS BASICES COVERING  code*/
SELECT 
country,
count(first_name) as customer_count,
first_name
from mydatabase.customers
WHERE first_name like "M%"
GROUP BY  country,first_name
-- having count(first_name)>=2
ORDER BY customer_count DESC
limit 3;


/*  */
SELECT 
country,
sum(score),
count (country) as country_country
FROM mydatabase.customers
WHERE score>400 or first_name like "M%"
GROUP BY country,score
ORDER BY sum(score) DESC
LIMIT 2;

/*from the customer table get the first_name with more than 1 occurrence 
where the score is below 800 AND the country is uk ,show the avg score score
in assending order and limit the output top 1 first name */
select 
count(first_name) as customer_count,
avg(score),
country,
first_name
from mydatabase.customers
where score<800 and country="uk"
GROUP by country,first_name
-- Having customer_count>1
order BY avg(score) ASC
LIMIT 1;

/*get countries with customers having score above 500 show top 2 countries by most customers(higest)*/
SELECT 
country,first_name,score 
FROM mydatabase.customers
WHERE score>500
ORDER BY first_name 
LIMIT 2;

/* first_name with avr score>400 in germany*/ 
select 
avg(score),first_name,country
from mydatabase.customers
where country ="Germany"-- or avg(score) > 500  : here it is wrong because we must use the having clause bcz where clause filter indivvudual clase before any aggrigation so but we need avg(score) after aggrigation bcz sql still dobnt know wht is the avg score of germany so thatwe must use having here that too after the group by need to follow th eorder
GROUP BY first_name,country
having avg(score) >400;

/* countries with max score above 700 and names having the A */
SELECT first_name,max(score) FROM mydatabase.customers
WHERE first_name like "_%a%"
GROUP BY first_name
HAVING max(score)>100;

/*get top 2 first_names sums of score above 300*/
select first_name,sum(score) from mydatabase.customers
-- where sum(score)>300
group by first_name
having sum(score)>300
LIMIT 2;


