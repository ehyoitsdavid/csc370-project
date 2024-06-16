-- DROP TABLE `records`;
-- DROP TABLE `books`;
-- DROP TABLE `users`;

CREATE TABLE `authors` (
    `author_id` INT NOT NULL PRIMARY KEY,
    `author_name` VARCHAR(20) DEFAULT NULL
);

CREATE TABLE `auth_book` (
    `ISBN` VARCHAR(15) NOT NULL PRIMARY KEY,
    `author_id` INT NOT NULL,
    `edition` VARCHAR(15) NOT NULL,
    `year` INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE TABLE `books` (
  `title` VARCHAR(50) DEFAULT NULL,
  `ISBN` VARCHAR(15) NOT NULL PRIMARY KEY,
  `type` VARCHAR(15) NOT NULL,
   FOREIGN KEY (ISBN) REFERENCES auth_book(ISBN)
);

CREATE TABLE `book_price`(
    `ISBN` VARCHAR(15) NOT NULL,
    `price` INT NOT NULL,
    FOREIGN KEY (ISBN) REFERENCES auth_book(ISBN)
);

CREATE TABLE `course` (
    `course_id` VARCHAR(10) NOT NULL PRIMARY KEY,
    `course_name` VARCHAR(30) NOT NULL,
    `field_of_study` VARCHAR(30) DEFAULT NULL
);

CREATE TABLE `required_text` (
    `ISBN` VARCHAR(15) NOT NULL,
    `course_id` VARCHAR(10) NOT NULL,
    PRIMARY KEY (ISBN, course_id),
    FOREIGN KEY (ISBN) REFERENCES auth_book(ISBN),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);


CREATE TABLE `user_account` (
  `v_number` VARCHAR(10) NOT NULL PRIMARY KEY,
  `name` VARCHAR(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `balance` INT DEFAULT NULL
  -- `isAdmin` ?
);

-- Change to transactions
CREATE TABLE `transactions` (
  `record_id` INT PRIMARY KEY NOT NULL,
  `date_sold` VARCHAR(40) DEFAULT NULL,
  `ISBN` VARCHAR(15) NOT NULL,
  `v_number` varchar(10) NOT NULL,
  `price_sold` INT DEFAULT NULL,
  FOREIGN KEY (ISBN) REFERENCES books(ISBN),
  FOREIGN KEY (v_number) REFERENCES user_account(v_number)
);

CREATE TABLE `price_record`(
    `price_sold` INT PRIMARY KEY NOT NULL,
    `seller_split` INT DEFAULT NULL
);

CREATE TABLE `book_sale`(
    `ISBN` VARCHAR(10) NOT NULL,
    `quantity` INT NOT NULL,
    FOREIGN KEY (ISBN) REFERENCES books(isbn),
    FOREIGN KEY (ISBN) REFERENCES transactions(isbn)
)
