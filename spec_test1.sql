-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 03 2018 г., 17:17
-- Версия сервера: 10.1.29-MariaDB
-- Версия PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `spec_test1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `type` text COLLATE utf8_bin NOT NULL,
  `q_text` text COLLATE utf8_bin NOT NULL,
  `ans1` text COLLATE utf8_bin NOT NULL,
  `ans2` text COLLATE utf8_bin NOT NULL,
  `ans3` text COLLATE utf8_bin NOT NULL,
  `a1` int(11) NOT NULL,
  `a2` int(11) NOT NULL,
  `a3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `question`
--

INSERT INTO `question` (`id`, `type`, `q_text`, `ans1`, `ans2`, `ans3`, `a1`, `a2`, `a3`) VALUES
(1, 'KIU', 'Вы когда-нибудь собирали свой компьютер? Знаете из чего он состоит?', 'Нет, никогда не собирал. Мне не интересно из чего состоит компьютер.', 'Не собирал, но осведомлен о составляющих компьютера.', 'Собирал, себе, другим, помогаю выбирать и внимательно выбираю каждую отдельную составляющую компьютера.', 0, 5, 10),
(2, 'KIU', 'Возможно ли Мировое господство при создании полноценного квантового суперкомпьютера?', 'Нет, но мечтать не вредно.', 'Не мировое господство, но широкий ряд возможностей.', 'О да, с его помощью открываются все информационные двери.', 0, 5, 10),
(3, 'KIU', 'Заставляло ли вас любопытство разбирать различные электронные устройства с целью узнать из чего они состоят и как они работают?', 'Нет, зачем портить технику, а любой ответ - как что работает можно найти в интернете.', 'Разбирал для починки пару бытовых предметов, но не из любопытства.', 'Только дайте добраться до отвертки - сами все узнаете.', 0, 5, 10),
(4, 'KIU', 'Насколько вам интересна та «Магия» благодаря которой груда высокотехнологичного металлолома может решать сложные узконаправленные задачи?', 'Не нужно знать как изготовлять винтовку, чтобы быть лучшим стрелком.', 'Если того требует задача - интересуюсь.', 'Стараюсь в полной мере понять все принципы работы электронной вычислительной машины.', 0, 5, 10),
(5, 'AI', 'Насколько вероятно “Восстание Машин” в будущем по типу голливудских фильмов?', 'Это точно произойдет.', 'Я не знаю. Вероятно да.', 'Этого нелепо.', 0, 5, 10),
(6, 'AI', 'Вам нравится предсказывать действия противника-компьютера “бота” в играх?', 'Нет, ведь это убирает весь интерес если заранее знаешь как поступит противник.', 'Предсказываю на автомате, не задумываясь.', 'Постоянно просчитываю алгоритм действия компьютера, ведь это дает большое преимущество.', 0, 5, 10),
(7, 'AI', 'После нахождения решения задачи как долго вы ищете способы улучшить (оптимизировать) решение?', 'Не трачу лишнее время и бегом реализовывать. Время - деньги.', 'Могу потратить минуты 2-3 на оптимизацию но не больше.', 'Иногда на оптимизацию уходит куда больше времени чем на поиск решения и реализации самой задачи вместе взятых.', 0, 5, 10),
(8, 'AI', 'Заманчиво ли для вас построить робота, который делал бы за вас всю работу более продуктивно?', 'Хочешь сделать хорошо - делай это сам.', 'Да, лень двигатель прогресса.', 'Да, но только для того чтобы делать больше интересной работы.', 0, 5, 10),
(9, 'BMI', 'Хотели бы вы стать Киборгом?', 'Человек в природном состоянии - лучше всего.', 'Да, стрелять лазером из глаз и летать при помощи встроенных ракетных двигателей - неплохо. ', 'Все что можно заменить более совершенным - заменяем, хоть киборгом такое уже и не назовешь.', 0, 5, 10),
(10, 'BMI', 'Привлекает ли вас возможность перенос сознания в виртуальное пространство?', 'Нет, так и потерять связь с реальностью недалеко. ', 'Только если частичная виртуальная реальность.', 'Смогли в \"Матрице\" сможем и мы.', 0, 5, 10),
(11, 'BMI', 'Мечтали ли вы в детстве стать врачом?', 'Нет, это не мое.', 'Мечтал равно как стать космонавтом и пожарником. ', 'Да, даже сейчас регулярно читаю медицинские статьи.', 0, 5, 10),
(12, 'BMI', 'Хотели бы вы заняться задачей, помощью с решением задачи излечения, анализа неизлечимых болезней?', 'Пусть этим занимаются врачи.', 'Помочь прямо или косвенно - да.', 'Хочешь сделать дело хорошо - возьми его в свои руки.', 0, 5, 10),
(13, 'ZI', 'Вы когда-нибудь зашифровывали текст на листочке бумаги с целью скрыть смысл содержания от посторонних?', 'Нет, мне нечего скрывать да и не от кого.', 'Было пару раз, иногда придумывали с друзьями тайные знаки.', 'Вы - не параноик, если за вами действительно следят. Анонимность и шифровка - наше все.', 0, 5, 10),
(14, 'ZI', 'Считаете ли вы Хакеров крутыми ребятами?', 'Не поощряю киберпреступность, использование навыков в сфере IT для совершения преступлений - низко.', 'Существуют как и \"Белые\" Хакеры, Робин Гуды, так и \"Черные - Преступники. ', 'Информация в наше время - это всё, а возможность её добычи в обход всяких защит это круто. ', 0, 5, 10),
(15, 'ZI', 'Нравятся ли вам детективы, ребусы, загадки, головоломки и их решения?', 'Предпочитаю другие виды развлечений.', 'Иногда, по настроению.', 'Да, это как наркотик, решив сложную загадку перехожу к следующей.', 0, 5, 10),
(16, 'ZI', 'Пытались ли хотя бы раз взломать Wi-Fi соседа?', 'Мне что делать нечего?', 'Да, пробовал раз, и бросил эту затею.', 'Что значит пытался? Я теперь за свой трафик вообще не плачу.', 0, 5, 10),
(17, 'PI', 'Умеете ли вы понимать и анализировать требования других людей?', 'Да, правда это занимает немного времени.', 'Это сложно, каждый человек имеет множество различных запросов и на анализ и подтверждение каждого уходит много времени.', 'После часа анализа я сам задаю себе этот вопрос.', 0, 5, 10),
(18, 'PI', 'Нравится ли вам искать “баги” в играх, ошибки в фильмах и несоответствия в историях?', 'Нет, пусть этим занимаются те, кому за это платят, тестировщики, разработчики, режиссеры, редакторы.', 'Иногда раздражает постоянные несоответствия с логикой или сюжетом, которые я замечаю.', 'Друзья меня называют \"Господин Председатель\" анонимного общества зануд.', 0, 5, 10),
(19, 'PI', 'Хотели ли вы научиться делать игры?', 'Нет, у меня другая цель и мечта.', 'Игровая индустрия - неплохой способ развить свои профессиональные навыки и заработка денег.', 'Игры, которые я планирую выпустить заменят Dota2, CS GO и станут новым мировым фундаментом для киберспорта.', 0, 5, 10),
(20, 'PI', 'Хотели бы вы связать свою деятельность с интернетом?', 'Нет, предпочитаю использовать интернет как инструмент, а не как неотъемлемую часть.', 'Частично можно связать, интернет - перспективная вещь.', 'За интернетом кладезем информации в информационный век - Будущее и вовремя нырнув в него - быстрее научишься плавать.', 0, 5, 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
