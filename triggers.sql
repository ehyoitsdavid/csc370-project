-- DROP TRIGGER invalid_order;
-- DROP TRIGGER balance_less_than_0;
-- DROP TRIGGER not_in_inventory;
-- DROP TRIGGER total_error;
-- When a user submits an order with total price 0 or negative
CREATE TRIGGER invalid_order
    BEFORE INSERT
    ON orders
    FOR EACH ROW
    IF NEW.total_order_price <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Invalid order. Total price must be greater than 0';
    END IF;
-- Enforce total price must be equal to quantity * each book copy price
CREATE TRIGGER total_error
    BEFORE INSERT
    ON transactions
    FOR EACH ROW
    IF NEW.total_price <> NEW.quantity * NEW.price_per_copy THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Total price must be equal to the product of quantity and price per copy';
    END IF;

-- When a user tries to place an order which will result to user balance to be negative
CREATE TRIGGER balance_less_than_0
    BEFORE INSERT
    ON `orders`
    FOR EACH ROW
BEGIN
    DECLARE user_balance INT;
    SELECT balance
    INTO user_balance
    FROM user_account
    WHERE NEW.v_number = user_account.v_number;
    IF (user_balance < NEW.total_order_price) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Cannot place order due to insufficient account balance.';
    END IF;
END;
-- When a user tries to place an order of a book that is out of stock
CREATE TRIGGER not_in_inventory
    BEFORE INSERT
    ON `transactions`
    FOR EACH ROW
BEGIN
    DECLARE inventory_quantity INT;
    SELECT quantity
    INTO inventory_quantity
    FROM inventory
    WHERE ISBN = NEW.ISBN
    FOR UPDATE;
    IF (NEW.quantity > inventory_quantity) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT =
                'Error: the book you are trying to place order on is not in inventory';
    END IF;
    UPDATE inventory
    SET quantity = quantity - NEW.quantity
    WHERE ISBN = NEW.ISBN;
    UPDATE user_account
    SET balance = balance - NEW.total_price
    WHERE v_number = NEW.v_number;
END;