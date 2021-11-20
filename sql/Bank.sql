

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction`(`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Asha', 'Sneha', 1260, '2021-08-09 12:42:03'),
(2, 'Harsha', 'Disha', 456, '2021-08-09 15:32:50'),
(3, 'Rashi', 'Shweta', 345, '2021-08-09 17:28:25');


CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Divya', 'divya@gmail.com', 50000),
(2, 'Harsha', 'harsha@gmail.com', 30000),
(3, 'Disha', 'disha@gmail.com', 40000),
(4, 'Ananya', 'ananya@gmail.com', 50000),
(5, 'Vaishnavi', 'vaishnavi@gmail.com', 40000),
(6, 'Harsh', 'Harsh@gmail.com', 30000),
(7, 'Ritika', 'ritika@gmail.com', 50000),
(8, 'Juhi', 'juhi@gmail.com', 40000),
(9, 'Nick', 'nick@gmail.com', 30000),
(10, 'Ashwini', 'ashwini@gmail.com', 50000);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

