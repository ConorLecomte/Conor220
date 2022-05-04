use store;

DELETE FROM customers where customers_id = 4;
DELETE FROM customers where customers_id = 5;
DELETE FROM customers where customers_id = 6;
DELETE FROM customers where customers_id in (7, 8, 9);

select customers.firstname, customers.lastname, orders.product
from customers
INNER join orders on customers.customers_id = orders.orders_id;

select customers.firstname, customers.lastname, orders.product
from customers
INNER join orders on customers.customers_id = orders.orders_id
WHERE lastname = 'Stamos';

select customers.firstname, customers.lastname, orders.product
from customers
INNER join orders on customers.customers_id = orders.orders_id
WHERE lastname = 'Musk';