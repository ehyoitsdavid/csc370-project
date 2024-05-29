DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `title` VARCHAR(50) DEFAULT NULL,
  `book_id` INT DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `price` INT DEFAULT NULL
);


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `name` VARCHAR(40) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `balance` INT DEFAULT NULL
);

CREATE TABLE `records` (
  `date_sold` VARCHAR(40) DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  `seller_id` varchar(40) DEFAULT NULL,
  `buyer_id` varchar(40) DEFAULT NULL,
  `price_sold` INT DEFAULT NULL
);
