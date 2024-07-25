-- Use the appropriate database
USE testdb;

-- Trigger balance low, and invalid orders

INSERT INTO orders (order_id, v_number, date_sold, total_order_price)
VALUES (61, 'V09000789', CURDATE(), 0); -- invalid order

INSERT INTO orders (order_id, v_number, date_sold, total_order_price)
VALUES (62, 'V09000789', CURDATE(), 50); -- valid

INSERT INTO orders (order_id, v_number, date_sold, total_order_price)
VALUES (63, 'V09000789', CURDATE(), 800); -- will throw balance error

-- Trigger not in inventory

INSERT INTO transactions(transaction_id, order_id, ISBN, v_number, quantity, price_per_copy, total_price)
VALUES (100, 62, '978-0-1360-0663-3', 'V09000789', 1, 50, 50);

INSERT INTO transactions(transaction_id, order_id, ISBN, v_number, quantity, price_per_copy, total_price)
VALUES (101, 62, '978-0-1360-0663-3', 'V09000789', 2, 50, 100) -- expected error
