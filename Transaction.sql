-- Use the appropriate database
USE testdb;

-- Drop the procedure if it already exists
DROP PROCEDURE IF EXISTS process_order;

-- Create the procedure
DELIMITER //

CREATE PROCEDURE process_order(user_v_number VARCHAR(255))
BEGIN
    DECLARE total_order_price INT DEFAULT 5;
    DECLARE current_balance INT;

    -- Start the transaction
    START TRANSACTION;

    -- Update the user account balance
    UPDATE user_account
    SET balance = balance - total_order_price
    WHERE v_number = user_v_number;

    -- Check if the balance is sufficient after the deduction
    SELECT balance INTO current_balance FROM user_account WHERE v_number = user_v_number;
    SELECT current_balance;

    IF current_balance < 0 THEN
        -- Rollback the transaction if the funds are insufficient
        ROLLBACK;
        SELECT 'Insufficient funds' AS error_message;
    ELSE
        -- Insert into orders table
        INSERT INTO orders (order_id, v_number, date_sold, total_order_price)
        VALUES (70, user_v_number, CURDATE(), total_order_price);

        -- Insert into transactions table
        INSERT INTO transactions (transaction_id, order_id, ISBN, v_number, quantity, price_per_copy, total_price)
        VALUES (70, 70, '978-0-2620-3384-8', user_v_number, 1, 5, total_order_price);

        -- Commit the transaction
        COMMIT;
    END IF;
END //

DELIMITER ;

-- Call the procedure
CALL process_order('V00000123');

-- Query the transactions table to see the inserted transactions
SELECT * FROM transactions WHERE v_number = 'V00000123';
