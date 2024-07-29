-- Insert test values, including NULL and NOT NULL email values
INSERT INTO user_account (v_number, name, email, balance) VALUES
('V001', 'Alice', 'alice@example.com', 100),
('V002', 'Bob', NULL, 150),
('V003', 'Charlie', 'charlie@example.com', 200),
('V004', 'Dave', NULL, 250);


-- If an email is NULL, replace to noemail@noemail.com
SELECT v_number, name, COALESCE(email, 'noemail@noemail.com') AS email
FROM user_account;

