-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 15 2021 г., 15:01
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `product`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(512) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `created`, `modified`, `image`) VALUES
(1, 'LG P880 4X HD', 'Мой первый классный телефон!', 336, 3, '2020-03-05 01:12:26', '2021-01-11 12:12:26', ''),
(2, 'Google Nexus 4', 'Самый крутой телефон 2013 года!', 299, 2, '2020-02-09 01:12:26', '2014-03-31 12:12:26', ''),
(3, 'Samsung Galaxy S4', 'Самые крутые умные часы!', 600, 3, '2020-02-09 01:12:26', '2021-01-11 12:12:26', ''),
(6, 'Bench Shirt', 'Лучшая рубашка!', 29, 1, '2018-06-02 01:12:26', '2020-03-20 21:12:21', ''),
(7, 'Lenovo Laptop', 'Мой бизнес партнер.', 399, 2, '2020-01-07 01:13:45', '2021-01-20 21:13:39', ''),
(8, 'Samsung Galaxy Tab 10.1', 'Хороший планшет.', 259, 2, '2018-06-01 01:14:13', '2019-05-30 21:14:08', ''),
(9, 'Spalding Watch', 'Мои спортивные часы.', 199, 1, '2019-05-03 01:18:36', '2020-05-30 21:18:31', ''),
(10, 'Sony Smart Watch', 'Как насчет нет?', 300, 2, '2020-06-06 17:10:01', '2021-01-05 13:09:51', ''),
(11, 'Huawei Y300', 'Для тестирования.', 100, 2, '2014-06-06 17:11:04', '2015-06-05 13:10:54', ''),
(12, 'Abercrombie Lake Arnold Shirt', 'Идеально как подарок!', 60, 1, '2017-06-06 17:12:21', '2018-06-05 13:12:11', ''),
(13, 'Abercrombie Allen Brook Shirt', 'Классная красная рубашка!', 70, 1, '2019-06-06 17:12:59', '2020-06-05 13:12:49', ''),
(25, 'Abercrombie Allen Anew Shirt', 'Классная новая рубашка!', 999, 1, '2020-11-22 18:42:13', '2021-01-21 14:42:13', ''),
(26, 'Another product', 'Потрясающий товар!', 555, 2, '2019-11-22 19:07:34', '2021-01-19 15:07:34', ''),
(27, 'Bag', 'Отличная сумка для тебя!', 999, 1, '2019-12-04 21:11:36', '2020-02-13 17:11:36', ''),
(30, 'Wal-mart Shirt', '', 555, 2, '2018-12-13 00:52:29', '2019-12-11 20:52:29', ''),
(32, 'Washing Machine Model PTRR', 'Какой-то новый продукт.', 999, 1, '2020-01-08 22:44:15', '2021-01-09 18:44:15', ''),
(33, 'заяц', '!!!!!!!!!!!!!!!!!!!', 550, 1, '2021-03-10 11:54:14', '2021-03-10 08:54:14', ''),
(34, ' Jeep Cherokee', 'Биксеноновые фары головного света, система бесключевого доступа Keyless Enter-N-Go, электропривод регулировок передних сидений, современные системы безопасности и коленная подушка для водителя. Jeep® Grand Cherokee Laredo удивит Вас богатым базовым оснащением', 3364000, 3, '2021-03-10 12:01:00', '2021-03-10 09:01:00', ''),
(35, 'Лада Гранта', 'Хорошая машина.', 10000000, 3, '2021-03-11 13:08:08', '2021-03-11 10:08:08', '2a968d57321d29a69ca4cfa8dcac538887990231-mvc-01.png'),
(36, 'Телевизор Samsung', 'Цветной телевизор', 15000, 2, '2021-03-11 13:30:39', '2021-03-11 10:30:39', '13159e50c308d7cda2c867ffb84d35a893e86e03-1.jpg'),
(37, 'Телевизор Samsung', 'Цветной телевизор', 15000, 2, '2021-03-11 13:38:52', '2021-03-11 10:38:52', '13159e50c308d7cda2c867ffb84d35a893e86e03-1.jpg'),
(38, 'Элегантное Красное платье. ', 'Бренд: dhgate. Материал: полиэстер.Сазиатор: US 2-16', 5600, 1, '2021-03-11 14:32:00', '2021-03-11 11:32:00', '46823b3c1dc6637be027c5f04d0c28c8140ca1f5-2.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
