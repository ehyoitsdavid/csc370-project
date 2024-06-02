
-- Inserting data into Books table
INSERT INTO books (title, isbn, author, course, price, status) VALUES
('Dune', '9780441172719', 'Frank Herbert', 'ENGL101', 25, 'sold'),
('Pride and Prejudice', '9780141439518', 'Jane Austen', 'ENGL102', 20, 'sold'),
('The Adventures of Tom Sawyer', '9780140620698', 'Mark Twain', 'ENGL103', 15, 'sold'),
('The Great Gatsby', '9780743273565', 'F. Scott Fitzgerald', 'ENGL104', 18, 'sold'),
('A Brief History of Time', '9780553380163', 'Stephen Hawking', 'PHYS101', 22, 'sold'),
('To Kill a Mockingbird', '9780061120084', 'Harper Lee', 'ENGL105', 19, 'for sale'),
('1984', '9780451524935', 'George Orwell', 'ENGL106', 17, 'for sale'),
('The Catcher in the Rye', '9780316769488', 'J.D. Salinger', 'ENGL107', 21, 'for sale'),
('Brave New World', '9780060850524', 'Aldous Huxley', 'ENGL108', 23, 'for sale'),
('The Art of Computer Programming', '9780201896831', 'Donald Knuth', 'CSC101', 50, 'for sale'),
('Introduction to Algorithms', '9780262033848', 'Thomas H. Cormen', 'CSC102', 45, 'for sale'),
('Artificial Intelligence: A Modern Approach', '9780136042594', 'Stuart Russell', 'CSC103', 55, 'for sale'),
('Clean Code', '9780132350884', 'Robert C. Martin', 'CSC104', 40, 'for sale'),
('The Pragmatic Programmer', '9780201616224', 'Andrew Hunt', 'CSC105', 35, 'for sale'),
('Algorithms Unlocked', '9780262518802', 'Thomas H. Cormen', 'CSC106', 30, 'for sale');

-- Inserting data into Users table
INSERT INTO users (name, vnum, email, balance) VALUES
('Alice Smith', 'V01234567', 'alice.smith@example.com', 5000),
('Bob Johnson', 'V02345678', 'bob.johnson@example.com', 3000),
('Charlie Brown', 'V03456789', 'charlie.brown@example.com', 2000),
('Diana Williams', 'V04567890', 'diana.williams@example.com', 4000),
('Eve Adams', 'V05678901', 'eve.adams@example.com', 6000),
('Franklin Brown', 'V06789012', 'franklin.brown@example.com', 2500),
('Grace Green', 'V07890123', 'grace.green@example.com', 3500),
('Hannah White', 'V08901234', 'hannah.white@example.com', 4500),
('Ivan Black', 'V09012345', 'ivan.black@example.com', 1500),
('Jack Grey', 'V01234568', 'jack.grey@example.com', 7000),
('Kelly Blue', 'V02345679', 'kelly.blue@example.com', 3000),
('Liam Silver', 'V03456780', 'liam.silver@example.com', 5000);

-- Inserting data into Records table
INSERT INTO records (date_sold, isbn, seller_vnum, buyer_vnum, price_sold) VALUES
('2024-05-20', '9780441172719', 'V04567890','V03456789', 25),
('2024-05-21', '9780141439518', 'V02345678', 'V02345679', 20),
('2024-05-22', '9780140620698', 'V03456780', 'V03456780', 15),
('2024-05-23', '9780743273565', 'V09012345', 'V07890123', 18),
('2024-05-24', '9780553380163', 'V09012345', 'V08901234', 22);