/*
Best practice:
*/

SELECT account_id
FROM orders;



/* Limit in MS SQL Server: fetch next 15 rows only;      */

SELECT occurred_at, account_id, channel
FROM web_events 
limit 15;


/*
return the 10 earliest orders in the orders table. */
SELECT id, occurred_at, total_amt_usd
FROM orders 
ORDER BY occurred_at
LIMIT 10;

/*
return the top 5 orders in terms of largest total_amt_usd.
*/
SELECT id, occurred_at, total_amt_usd
FROM orders 
ORDER BY total_amt_usd Desc
LIMIT 5;

/*
 return the lowest 20 orders in terms of smallest total_amt_usd.
 */
SELECT id, occurred_at, total_amt_usd
FROM orders 
ORDER BY total_amt_usd
LIMIT 20;





/*
displays the order {ID}, {account ID}, and {total dollar amount} for all the {orders}, 
sorted first by the account ID (in ascending order), and then by the total dollar amount (in descending order).
*/
SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY account_id ASC, total_amt_usd DESC;



/*
displays order ID, account ID, and total dollar amount for each order, but this time 
sorted first by total dollar amount (in descending order), and then by account ID (in ascending order).
*/
SELECT id, total_amt_usd AS total_amt_usd_desc, account_id AS account_id_asc
FROM orders
ORDER BY total_amt_usd DESC, account_id ASC;


/*
Pulls the first 5 rows and all columns from the orders table that have 
a dollar amount of gloss_amt_usd greater than or equal to 1000.
*/

SELECT *
FROM orders
WHERE gloss_amt_usd >= 1000
LIMIT 5;


/*
Pulls the first 10 rows and all columns from the orders table that have a total_amt_usd less than 500.
*/
SELECT *
FROM orders
WHERE total_amt_usd < 500
LIMIT 10;



/*
Filter the accounts table to include the company name, website, and the primary point of contact (primary_poc) 
just for the Exxon Mobil company in the accounts table.
*/

SELECT name, website, primary_poc
FROM accounts 
WHERE name = 'Exxon Mobil';