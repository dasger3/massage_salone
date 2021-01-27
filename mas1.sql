-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 27 2021 г., 15:22
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mas1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `actions`
--

CREATE TABLE `actions` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `actions`
--

INSERT INTO `actions` (`id`, `name`, `comment`) VALUES
(1, 'add_own', 'Додавання своєї анкети'),
(2, 'del_own', 'Видалення своєї анкети'),
(3, 'update_own', 'Редагування своєї анкети'),
(4, 'view_own', 'Перегляд своєї анкети'),
(5, 'add_other', 'Додавання чужої анкети'),
(6, 'del_other', 'Видалення чужої анкети'),
(7, 'update_other', 'Редагування чужої анкети'),
(8, 'view_other', 'Перегляд чужої анкети'),
(9, 'view_profil_user', 'Перегляд чужого особистого кабінету');

-- --------------------------------------------------------

--
-- Структура таблицы `action_role`
--

CREATE TABLE `action_role` (
  `role_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `action_role`
--

INSERT INTO `action_role` (`role_id`, `action_id`) VALUES
(1, 8),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 8),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 6),
(3, 8),
(3, 9),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `anketas`
--

CREATE TABLE `anketas` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `type_id` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `tel` varchar(20) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `about_me` text DEFAULT NULL,
  `education_id` int(11) NOT NULL,
  `experience_id` int(11) NOT NULL,
  `price_1h_office` int(11) DEFAULT NULL,
  `price_2h_office` int(11) DEFAULT NULL,
  `price_1h_challenge` int(11) DEFAULT NULL,
  `price_2h_challenge` int(11) DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `anketas`
--

INSERT INTO `anketas` (`id`, `user_id`, `name`, `type_id`, `age`, `tel`, `city_id`, `address`, `about_me`, `education_id`, `experience_id`, `price_1h_office`, `price_2h_office`, `price_1h_challenge`, `price_2h_challenge`, `photo_id`, `created_at`, `updated_at`) VALUES
(241, 56, 'Сергій', 3, 31, '380507894517', 1, 'default address', 'Дуже талановитий спеціаліст.', 4, 6, 300, 550, 600, 1000, 100, '2020-12-18 15:34:32', '2020-12-18 15:34:32'),
(242, 56, 'Євгеній', 1, 29, '38054789563', 2, 'default address', 'Дешевий і якісний масаж.', 2, 3, 400, 600, 800, 1200, 101, '2020-12-18 15:46:10', '2020-12-18 15:46:10'),
(243, 56, 'Марія', 1, 20, '380597814511', 3, 'default address', 'Дуже талановита та працелюбна.', 3, 4, 500, 700, 800, 1000, 102, '2020-12-18 15:52:20', '2020-12-18 15:52:20'),
(244, 56, 'Богдан', 5, 40, '380597814412', 1, 'default address', 'В цьому році в нашому санаторії буде доступний недорогий масаж різних типів.', 3, 5, 400, 600, 1000, 2000, 103, '2020-12-19 03:00:14', '2020-12-19 03:00:15'),
(245, 56, 'Олена', 2, 27, '38011719569', 2, 'default address', 'Спасу від будь-якого болю в спині і попереку.', 2, 5, 400, 700, 700, 1000, 104, '2020-12-19 03:03:56', '2020-12-19 03:03:56'),
(246, 71, 'Аліна', 4, 25, '380507894510', 1, 'default address', 'Дуже талановита та яскрава! Записуйтесь!', 2, 3, 300, 550, 700, 1000, 105, '2020-12-20 15:17:39', '2020-12-20 16:07:08'),
(247, 68, 'Іван', 2, 32, '2345345', 2, 'віапвіпар', 'кванопно', 2, 2, 220, 330, 400, 600, 104, '2020-12-21 05:51:22', '2020-12-21 05:51:22'),
(248, 71, 'Сергій', 2, 19, '380507894517', 1, 'вулиця Політехнічна 26', 'Талановитий порфесіонал', 2, 2, 300, 550, 600, 1000, 108, '2020-12-21 09:29:48', '2020-12-21 09:29:48'),
(249, 79, 'Сергій', 1, 19, '380507894517', 1, 'вулиця Політехнічна 27', 'Дуже тадановитий спеціаліст.', 3, 3, 300, 550, 600, 1000, 109, '2020-12-21 09:42:01', '2020-12-21 09:42:01'),
(250, 81, 'Алексей', 1, 23, '380507709005', 1, 'Ващенко 5', 'Дуже талановитий та яскравай! Записуйтесь!\r\n', 3, 4, 100, 180, 300, 280, 102, '2020-12-24 17:01:51', '0000-00-00 00:00:00'),
(251, 81, 'Алексей', 1, 23, '380507709005', 1, 'Ващенко 5', 'Дуже талановита та яскрава! Записуйтесь!\r\n', 2, 1, 100, 180, 300, 280, 106, '2020-12-24 17:02:51', '2020-12-30 17:02:07'),
(252, 78, 'Ильяс', 3, 25, '38055259005', 3, 'Ефремова 5', 'Гарний масажист', 5, 3, 50, 100, 300, 250, 104, '2020-12-24 17:04:33', '2020-12-24 17:03:21'),
(253, 81, 'вапи', 1, 12, '0507709005', 1, 'Evremova 3b', 'ми', 3, 4, 122, 12, 12, 12, NULL, '2020-12-24 16:09:13', '2020-12-24 16:09:13'),
(254, 80, 'Сергей', 5, 25, '380554259005', 2, 'Харьковская 54', 'Гарний санаторій', 1, 4, 234, 414, 500, 600, 106, '2020-12-24 20:54:55', '2020-12-24 20:53:20');

-- --------------------------------------------------------

--
-- Структура таблицы `anketa_metro`
--

CREATE TABLE `anketa_metro` (
  `anketa_id` int(11) NOT NULL,
  `metro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `anketa_metro`
--

INSERT INTO `anketa_metro` (`anketa_id`, `metro_id`) VALUES
(241, 1),
(242, 76),
(243, 65),
(244, 7),
(244, 10),
(244, 11),
(245, 70),
(245, 73),
(245, 76),
(246, 14),
(247, 8),
(247, 12),
(248, 7),
(249, 7),
(253, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `anketa_service`
--

CREATE TABLE `anketa_service` (
  `id` int(11) NOT NULL,
  `anketa_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `anketa_service`
--

INSERT INTO `anketa_service` (`id`, `anketa_id`, `service_id`) VALUES
(5, 245, 11),
(6, 245, 15),
(7, 246, 1),
(8, 246, 3),
(9, 246, 18),
(10, 246, 19),
(11, 247, 1),
(12, 247, 5),
(13, 248, 1),
(14, 248, 2),
(15, 249, 1),
(16, 249, 15),
(17, 249, 20);

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `name`) VALUES
(1, 'Київ'),
(2, 'Харків'),
(3, 'Дніпро');

-- --------------------------------------------------------

--
-- Структура таблицы `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `education`
--

INSERT INTO `education` (`id`, `name`) VALUES
(1, 'Неважливо'),
(2, 'Медичне середнє'),
(3, 'Медичне вища'),
(4, 'Професійне'),
(5, 'Самоучка');

-- --------------------------------------------------------

--
-- Структура таблицы `experiences`
--

CREATE TABLE `experiences` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `experiences`
--

INSERT INTO `experiences` (`id`, `name`) VALUES
(1, 'Немає досвіду'),
(2, 'Менше року'),
(3, 'Більше року'),
(4, 'Більше 3 років'),
(5, 'Більше 5 років'),
(6, 'Більше 10 років');

-- --------------------------------------------------------

--
-- Структура таблицы `metros`
--

CREATE TABLE `metros` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `metros`
--

INSERT INTO `metros` (`id`, `city_id`, `name`) VALUES
(1, 1, 'Академмістечко'),
(2, 1, 'Житомирська'),
(3, 1, 'Святошин'),
(4, 1, 'Нивки'),
(5, 1, 'Берестейська'),
(6, 1, 'Шулявська'),
(7, 1, 'Політехнічний інститут'),
(8, 1, 'Вокзальна'),
(9, 1, 'Університет'),
(10, 1, 'Театральна'),
(11, 1, 'Хрещатик'),
(12, 1, 'Арсенальна'),
(13, 1, 'Дніпро'),
(14, 1, 'Гідропарк'),
(15, 1, 'Лівобережна'),
(16, 1, 'Дарниця'),
(17, 1, 'Чернігівська'),
(18, 1, 'Лісова'),
(19, 1, 'Героїв Дніпра'),
(20, 1, 'Мінська'),
(21, 1, 'Оболонь'),
(22, 1, 'Почайна'),
(23, 1, 'Тараса Шевченка'),
(24, 1, 'Контрактова площа'),
(25, 1, 'Поштова площа'),
(26, 1, 'Майдан Незалежності'),
(27, 1, 'Площа Льва Толстого'),
(28, 1, 'Олімпійська'),
(29, 1, 'Палац «Україна»'),
(30, 1, 'Либідська'),
(31, 1, 'Деміївська'),
(32, 1, 'Голосіївська'),
(33, 1, 'Васильківська'),
(34, 1, 'Виставковий центр'),
(35, 1, 'Іподром'),
(36, 1, 'Теремки'),
(37, 1, 'Сирець'),
(38, 1, 'Дорогожичі'),
(39, 1, 'Лук\'янівська'),
(40, 1, 'Золоті ворота'),
(41, 1, 'Палац спорту'),
(42, 1, 'Кловська'),
(43, 1, 'Печерська'),
(44, 1, 'Дружби народів'),
(45, 1, 'Видубичі'),
(46, 1, 'Славутич'),
(47, 1, 'Осокорки'),
(48, 1, 'Позняки'),
(49, 1, 'Харківська'),
(50, 1, 'Вирлиця'),
(51, 1, 'Бориспільська'),
(52, 1, 'Червоний хутір'),
(53, 2, 'Холодна гора'),
(54, 2, 'Південний вокзал'),
(55, 2, 'Центральний ринок'),
(56, 2, 'Майдан Конституції'),
(57, 2, 'Проспект Гагаріна'),
(58, 2, 'Спортивна'),
(59, 2, 'Завод імені Малишева'),
(60, 2, 'Турбоатом'),
(61, 2, 'Імені О.С. Масельського'),
(62, 2, 'Армійська'),
(63, 2, 'Тракторний завод'),
(64, 2, 'Індустріальна'),
(65, 3, 'Покровська'),
(66, 3, 'Проспект Свободи'),
(67, 3, 'Заводська'),
(68, 3, 'Металургів'),
(69, 3, 'Метробудівників'),
(70, 2, 'Героїв праці'),
(71, 2, 'Студентська'),
(72, 2, 'Академіка Павлова'),
(73, 2, 'Академіка Барабашова'),
(74, 2, 'Київська'),
(75, 2, 'Пушкінська'),
(76, 2, 'Історичний музей'),
(77, 2, 'Перемога');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `anketa_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `timetable_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `anketa_id`, `date`, `timetable_id`, `updated_at`, `created_at`) VALUES
(1, 56, 243, '2020-12-02', 1, '2020-12-21 06:52:43', '2020-12-21 06:52:43'),
(2, 56, 243, '2020-12-17', 1, '2020-12-21 06:52:43', '2020-12-21 06:52:43'),
(3, 56, 245, '2020-12-31', 1, '2020-12-21 06:52:43', '2020-12-21 06:52:43'),
(10, 56, 246, '2020-12-23', 1, '2020-12-21 06:52:43', '2020-12-21 06:52:43'),
(11, 56, 246, '2020-12-23', 2, '2020-12-21 06:52:43', '2020-12-21 06:52:43'),
(12, 56, 241, '2020-12-23', 7, '2020-12-21 08:40:49', '2020-12-21 08:40:49'),
(13, 56, 246, '2020-12-21', 5, '2020-12-21 08:54:58', '2020-12-21 08:54:58'),
(14, 56, 246, '2020-12-24', 7, '2020-12-21 09:26:59', '2020-12-21 09:26:59'),
(15, 56, 249, '2020-12-22', 4, '2020-12-21 09:44:20', '2020-12-21 09:44:20'),
(16, 82, 242, '2020-12-25', 1, '2020-12-24 11:15:33', '2020-12-24 11:15:33'),
(17, 81, 250, '2020-08-18', 8, '2020-12-25 01:12:02', '0000-00-00 00:00:00'),
(18, 81, 250, '2020-12-23', 5, '2020-12-25 01:12:35', '2020-12-30 01:12:08'),
(19, 74, 252, '2020-12-31', 12, '2020-12-25 01:13:47', '2020-12-25 01:13:07'),
(20, 78, 252, '2020-12-30', 8, '2020-12-25 01:14:31', '2020-12-25 01:14:07');

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `anketa_id` int(11) NOT NULL,
  `path` varchar(200) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `photos`
--

INSERT INTO `photos` (`id`, `anketa_id`, `path`, `updated_at`, `created_at`) VALUES
(100, 241, '241_1.jpg', '2020-12-18 15:34:32', '2020-12-18 15:34:32'),
(101, 242, '242_1.jpg', '2020-12-18 15:46:10', '2020-12-18 15:46:10'),
(102, 243, '243_1.jpg', '2020-12-18 15:52:20', '2020-12-18 15:52:20'),
(103, 244, '244_1.jpg', '2020-12-19 03:00:15', '2020-12-19 03:00:15'),
(104, 245, '245_1.jpg', '2020-12-19 03:03:56', '2020-12-19 03:03:56'),
(105, 246, '246_1.jpg', '2020-12-20 15:17:39', '2020-12-20 15:17:39'),
(106, 247, '247_1.png', '2020-12-21 05:51:22', '2020-12-21 05:51:22'),
(107, 247, '247_2.png', '2020-12-21 05:51:22', '2020-12-21 05:51:22'),
(108, 248, '248_1.jpg', '2020-12-21 09:29:48', '2020-12-21 09:29:48'),
(109, 249, '249_1.jpg', '2020-12-21 09:42:01', '2020-12-21 09:42:01');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`) VALUES
(1, 'blocked', 'Заблокований користувач'),
(2, 'user', 'Користувач'),
(3, 'owner', 'Власник організації '),
(4, 'admin', 'Адміністратор');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `name`) VALUES
(1, 'Класичний масаж'),
(2, 'Лікувальний масаж'),
(3, 'Спортивний масаж'),
(4, 'Антицелюлітний масаж'),
(5, 'Поверхневий масаж'),
(6, 'Гігієнічний масаж'),
(7, 'Східний масаж'),
(8, 'Глибокий масаж'),
(9, 'Точковий масаж'),
(10, 'Розслаблюючий масаж'),
(11, 'Масаж обличчя'),
(12, 'Масаж спини'),
(13, 'Масаж грудей'),
(14, 'Масаж рук'),
(15, 'Масаж голови'),
(16, 'Масаж ніг'),
(17, 'Апаратний масаж'),
(18, 'Лімфодренажний масаж'),
(19, 'Кріомасаж'),
(20, 'Масаж ложками'),
(21, 'Тантричний масаж'),
(22, 'Японський масаж'),
(23, 'Масаж гілкою сакури'),
(24, 'Шведський масаж'),
(25, 'Давньоєгипетський масаж'),
(26, 'Аква-пінний масаж'),
(27, 'Корекція фігури'),
(28, 'Обгортання'),
(29, 'Пілінг'),
(30, 'Медовий масаж');

-- --------------------------------------------------------

--
-- Структура таблицы `timetables`
--

CREATE TABLE `timetables` (
  `id` int(11) NOT NULL,
  `begin` time NOT NULL,
  `end` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `timetables`
--

INSERT INTO `timetables` (`id`, `begin`, `end`) VALUES
(1, '06:00:00', '06:30:00'),
(2, '06:30:00', '07:00:00'),
(3, '07:00:00', '07:30:00'),
(4, '07:30:00', '08:00:00'),
(5, '08:00:00', '08:30:00'),
(6, '08:30:00', '09:00:00'),
(7, '09:00:00', '09:30:00'),
(8, '09:30:00', '10:00:00'),
(9, '10:30:00', '11:00:00'),
(10, '11:30:00', '12:00:00'),
(11, '12:30:00', '13:00:00'),
(12, '13:30:00', '14:00:00'),
(13, '14:30:00', '15:00:00'),
(14, '15:30:00', '16:00:00'),
(15, '16:30:00', '17:00:00'),
(16, '17:30:00', '18:00:00'),
(17, '18:30:00', '19:00:00'),
(18, '19:30:00', '20:00:00'),
(19, '20:30:00', '21:00:00'),
(20, '21:30:00', '22:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'Приватні масажисти'),
(2, 'Приватні масажистки'),
(3, 'Салони масажу'),
(4, 'SPA салони'),
(5, 'Санаторій');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` datetime DEFAULT current_timestamp(),
  `join_date` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `role_id` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `email_verified_at`, `join_date`, `updated_at`, `created_at`, `role_id`) VALUES
(56, 'ilyas', 'kadyrbekov301@gmail.com', '$2y$10$NhO6xhWWMGN8ENFKU3x5r.S2gBLGcPFe3frJ5MUcDQfXad9Wu4eaa', NULL, '2020-12-18 21:31:43', NULL, '2020-12-18 17:31:42', '2020-12-18 17:31:42', 2),
(68, 'a14', 'a14@com', '$2y$10$Ex.kZwODkNO2f4tGITKjseE0xXq5KxA2IgxmkUG93mb1lYyQaUD.W', NULL, '2020-12-20 13:39:46', NULL, '2020-12-20 09:39:46', '2020-12-20 09:39:46', 3),
(70, 'ilyas1', 'avem@gmail.com', '$2y$10$dSkB/m1gSyC5ejPuGRnaf.L/kx5LhjvU3l4EmSVjaTEZdeZUBfw6e', NULL, '2020-12-20 15:14:10', NULL, '2020-12-20 11:14:10', '2020-12-20 11:14:10', 2),
(71, 'ilyas3', 'avem3@gmail.com', '$2y$10$fsrwOo8qyAPszxTS/lPNoun2FviJXMi8whaVlRiRGKN130VnWfeaK', NULL, '2020-12-20 15:15:11', NULL, '2020-12-20 11:15:11', '2020-12-20 11:15:11', 3),
(72, 'ilyas6', 'avem6@gmail.com', '$2y$10$KTCmMNnpdhgu1nojrJiBje1Rr/v4.nUpD7slkpJFnZKk1CpswE5/S', NULL, '2020-12-20 23:25:49', NULL, '2020-12-20 19:25:49', '2020-12-20 19:25:49', 2),
(73, 'ilyas7', 'avem7@gmail.com', '$2y$10$Be3JbZ9IW9aeWSrq.itEB.MG/be7VPw88K2iOfaGd3fLuc5MxLwRC', NULL, '2020-12-20 23:26:34', NULL, '2020-12-20 19:26:34', '2020-12-20 19:26:34', 2),
(74, 'ilyas8', 'avem8@gmail.com', '$2y$10$E//N6gv0/76lPZ4XzoZts.TfjMMLVA3FcQ2KQsh7CiWeXRc5Za0ia', NULL, '2020-12-20 23:28:14', NULL, '2020-12-20 19:28:14', '2020-12-20 19:28:14', 3),
(75, 'a15', 'a15@com', '$2y$10$Df3yXqvUlpDHmjubbxPX8uRVq/rfnODmOCdV439OQdD/n0om5TL2e', NULL, '2020-12-21 07:48:04', NULL, '2020-12-21 03:48:04', '2020-12-21 03:48:04', 3),
(77, 'ilyas23435', 'kadyrbekov8848@gmail.com', '$2y$10$hml9arBpMas.xxC5DlG9f.yCWSDZ5.no/UgWf8hQwN9QaqjvS0tVe', NULL, '2020-12-21 13:11:38', NULL, '2020-12-21 09:11:38', '2020-12-21 09:11:38', 2),
(78, 'ilyas123554', 'avem113142234@gmail.com', '$2y$10$YJa/DLBjleuSKAGHo4jS..kREdjNpc9pXNEquHDDmYos5/FjieWla', NULL, '2020-12-21 13:25:37', NULL, '2020-12-21 09:25:37', '2020-12-21 09:25:37', 3),
(79, 'ilyas12345', 'avem12345@gmail.com', '$2y$10$hhWuAaZwILkmvIeCym5AZO0sHJPi9pYlslRg3.ua93T8zDrKuBJw2', NULL, '2020-12-21 13:38:28', NULL, '2020-12-21 09:38:28', '2020-12-21 09:38:28', 3),
(80, 'dasger3', 'voronalex@gmail.com', '$2y$10$Ss/dqQHCq5D5LXA13yvokOIQ8eQJbwIsbwPDUI/nBmhAVRpOXZn/m', NULL, '2020-12-24 15:04:35', NULL, '2020-12-24 11:04:35', '2020-12-24 11:04:35', 3),
(81, 'Алексей Воронин', 'voronalex67@gmail.com', '$2y$10$lwfdEIM4UmcghI0x18.H2OItm5wSqPGvDeMcAE7hlkr.jGXSoe1Ri', NULL, '2020-12-24 15:11:55', NULL, '2020-12-24 11:11:55', '2020-12-24 11:11:55', 3),
(82, 'qq', 'v@gmail.com', '$2y$10$X9wfWw61ElZifOw38lUO6.BgLNam.1DSqTUu/tLfUNJiQzLRd8AlK', NULL, '2020-12-24 15:12:44', NULL, '2020-12-24 11:12:44', '2020-12-24 11:12:44', 2),
(83, 'й', 'voronalex@gmail.com1', '$2y$10$WsQHvcVIOunqkaYUNuCJV.YAlS7o7dgVrNqnpKF1EzgXPIdG6.n7a', NULL, '2020-12-30 19:39:58', NULL, '2020-12-30 15:39:58', '2020-12-30 15:39:58', 3),
(84, '1', 'voronalex@gmail.com11', '$2y$10$jcYevBOxJstIu9.a1qXEluI.oLP1vdiWYbJkj2ieKdkj8f9n3AqXm', NULL, '2020-12-30 19:40:14', NULL, '2020-12-30 15:40:14', '2020-12-30 15:40:14', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `action_role`
--
ALTER TABLE `action_role`
  ADD PRIMARY KEY (`role_id`,`action_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Индексы таблицы `anketas`
--
ALTER TABLE `anketas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_city` (`city_id`),
  ADD KEY `id_type` (`type_id`),
  ADD KEY `id_education` (`education_id`),
  ADD KEY `id_experience` (`experience_id`),
  ADD KEY `anketas_ibfk_8` (`photo_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `anketa_metro`
--
ALTER TABLE `anketa_metro`
  ADD PRIMARY KEY (`anketa_id`,`metro_id`),
  ADD KEY `metro_id` (`metro_id`);

--
-- Индексы таблицы `anketa_service`
--
ALTER TABLE `anketa_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anketa_id` (`anketa_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `metros`
--
ALTER TABLE `metros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metros_ibfk_1` (`city_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anketa_id_2` (`anketa_id`,`date`,`timetable_id`),
  ADD KEY `anketa_id` (`anketa_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `timetable_id` (`timetable_id`);

--
-- Индексы таблицы `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `timetables`
--
ALTER TABLE `timetables`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `login` (`name`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `actions`
--
ALTER TABLE `actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `anketas`
--
ALTER TABLE `anketas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT для таблицы `anketa_service`
--
ALTER TABLE `anketa_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `timetables`
--
ALTER TABLE `timetables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `action_role`
--
ALTER TABLE `action_role`
  ADD CONSTRAINT `action_role_ibfk_1` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`),
  ADD CONSTRAINT `action_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `anketas`
--
ALTER TABLE `anketas`
  ADD CONSTRAINT `anketas_ibfk_10` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`),
  ADD CONSTRAINT `anketas_ibfk_11` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `anketas_ibfk_4` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `anketas_ibfk_5` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`),
  ADD CONSTRAINT `anketas_ibfk_6` FOREIGN KEY (`education_id`) REFERENCES `education` (`id`),
  ADD CONSTRAINT `anketas_ibfk_7` FOREIGN KEY (`experience_id`) REFERENCES `experiences` (`id`),
  ADD CONSTRAINT `anketas_ibfk_9` FOREIGN KEY (`education_id`) REFERENCES `education` (`id`);

--
-- Ограничения внешнего ключа таблицы `anketa_metro`
--
ALTER TABLE `anketa_metro`
  ADD CONSTRAINT `anketa_metro_ibfk_1` FOREIGN KEY (`anketa_id`) REFERENCES `anketas` (`id`),
  ADD CONSTRAINT `anketa_metro_ibfk_2` FOREIGN KEY (`metro_id`) REFERENCES `metros` (`id`);

--
-- Ограничения внешнего ключа таблицы `anketa_service`
--
ALTER TABLE `anketa_service`
  ADD CONSTRAINT `anketa_service_ibfk_1` FOREIGN KEY (`anketa_id`) REFERENCES `anketas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `anketa_service_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);

--
-- Ограничения внешнего ключа таблицы `metros`
--
ALTER TABLE `metros`
  ADD CONSTRAINT `metros_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`anketa_id`) REFERENCES `anketas` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`timetable_id`) REFERENCES `timetables` (`id`);

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
