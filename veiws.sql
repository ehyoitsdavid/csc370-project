
-- Shows all past sales of each book
CREATE VIEW BookSalesHistory AS
SELECT 
    t.ISBN,
    o.date_sold,
    t.quantity,
    t.total_price
FROM 
    transactions t
JOIN 
    orders o ON t.order_id = o.order_id;

-- Shows all books with their current price and quantity listed
CREATE VIEW SellBook AS
SELECT
    i.ISBN AS ISBN,
    i.quantity as quantity,
    i.sell_price_per_copy as current_price
FROM
    inventory i;



