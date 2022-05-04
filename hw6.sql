use store;

INSERT INTO customers (firstname, lastname, company) VALUES ('Elon', 'Musk', 'Tesla');
INSERT INTO customers (firstname, lastname, company) VALUES ('Jeff', 'Bezos', 'Amazon');
INSERT INTO customers (firstname, lastname) VALUES ('John', 'Stamos');

SELECT * from customers;
SELECT * from Orders;
SELECT * from customers_products;

INSERT INTO orders (product, cost, customers_id) VALUES ('ModelX', '20', 1);
INSERT INTO orders (product, cost, customers_id) VALUES ('ModelY', '25', 1);
INSERT INTO orders (product, cost, customers_id) VALUES ('Yacht', '30', 2);
INSERT INTO orders (product, cost, customers_id) VALUES ('Fuel', '20', 2);
INSERT INTO orders (product, cost, customers_id) VALUES ('Hair jell', '10', 3);

INSERT INTO customers_products(orders_id, customer_id) VALUES (4,4);
INSERT INTO customers_products(orders_id, customer_id) VALUES (1,3);
INSERT INTO customers_products(orders_id, customer_id) VALUES (3,2);