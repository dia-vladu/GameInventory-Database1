-- INSERT INTO USERS

INSERT INTO [dbo].[User](FirstName, LastName, Email, BirthDate, Nationality, Gender)
VALUES  ('Ion', 'Popescu', 'ionut.pop.21@gmail.com', '1964-02-19', 'Romania', 'M'),
		('Laura', 'Avramescu', 'lau.avram@yahoo.com', '1970-06-24', 'Romania', NULL),
		('Nikita', 'danilov', 'niki.dani@hotmail.com', '1999-12-15', 'Ucraina', 'F'),
		('Alex', 'Andronic', 'alex1234@ase.ro', '2001-04-19', 'Romania', NULL),
		('Violeta', 'Velinco', 'Vio20@gmail.com', '2004-07-20', 'Bulgaria', NULL),
		('Elena', 'Lohan', 'lohanelena@gmail.com', '2000-06-26', 'America', 'F'),
		('Ana-Maria', 'Udroiu', 'anaMariaU@yahoo.com', '1998-03-11', 'Romania', NULL),
		('Shawn', 'Smith', 'ssmith2008@hotmail.com', '2008-08-18', 'Canada', NULL),
		('Ruhul', 'Najiha', 'ruhu.najiha@yahoo.com', '1986-05-07', 'Maroc', 'M'),
		('Adina Claudia', 'Dobru', 'adina2014dobru@gmail.com', '2001-10-09', 'Romania', 'F')


--INSERT INTO PLATFORMS

INSERT INTO [dbo].[Platform] (PlatformName)
VALUES  ('PC'),
		('Xbox Series X|S'),
		('PlayStation 5'),
		('Xbox One'),
		('PlayStation 4'),
		('Xbox 360'),
		('PlayStation 3'),
		('Nintendo Switch'),
		('Wii'),
		('Stadia'),
		('Android'),
		('IOS')


-- INSERT INTO EDITIONS

INSERT INTO [dbo].[Edition] (EditionName, AdditionalPrice)
VALUES  ('Standard Edition', 10),
		('Deluxe Edition', 50),
		('Ultimate Edition', 40),
		('Complete Edition', 60),
		('Gold Edition', 35),
		('Collector Edition', 20),
		('Starter Edition', NULL)


-- INSERT INTO GAMES

INSERT INTO [dbo].[Game] (Title, Genre, ReleaseDate, Developer, Price, Description)
VALUES  ('Just Dance 2022', 'Dance', '2021-11-04', 'Ubisoft Paris', 24.99, 'Just Dance 2022 is the ultimate dance game.'),
		('Far Cry 6', 'First-person shooter', '2021-10-07', 'Ubisoft Worldwide', 29.99, NULL),
		('Assassin''s Creed Valhalla', 'Action/Adventure', '2020-11-10', 'Ubisoft Montreal', 24, 'Become Eivor, a legendary Viking raider on a quest for glory. Explore England''s Dark Ages as you raid your enemies, grow your settlement, and build your political power.'),
		('Family Feud', 'Family/Puzzle/Trivia', '2020-11-12', 'Snap Finger Click', 29.99, NULL),
		('Assassin''s Creed Odyssey', 'Action/Adventure', '2018-10-02', 'Ubisoft Montreal, Quebec', 79.99, NULL),
		('Mario + Rabbids Kingdom Battle', 'Turn Based / Adventure', '2017-08-29', 'Ubisoft Worldwide', 22.20, 'Outwit unpredictable enemies in dynamic turn-based combat and co-op challenges, and solve puzzles.'),
		('UNO!', 'Family / Strategy', '2016-08-16', 'Ubisoft', 14.99, 'UNO® makes its return to consoles and PC with an assortment of exciting features such as added video chat support and an all-new theme system that adds more fun!'),
		('Watch Dogs: Legion','Action/Adventure', '2020-10-29', 'Ubisoft Toronto', 59.99, NULL )


-- INSERT INTO INVETORY

INSERT INTO [dbo].[Inventory] (UserId)
VALUES  (1),
		(2),
		(3),
		(4),
		(5),
		(6),
		(7),
		(8),
		(9),
		(10)


-- INSERT INTO ITEMS

INSERT INTO [dbo].[Item] (AcquisitionDate, InventoryId, GameId, PlatformId, EditionId)
VALUES  ('2019-05-15 05:29:16', 101, 5, 1, 2),
		('2020-09-17 18:17:27', 109, 6, 3, 5),
		('2022-12-02 05:11:03', 102, 1, 9, 1),
		('2022-01-01 14:21:53', 102, 8, 1, 7),
		('2021-04-02 12:19:46', 100, 3, 1, 7),
		('2018-03-09 13:33:02', 100, 6, 7, 7),
		('2019-08-19 22:59:46', 100, 5, 1, 5),
		('2022-08-05 10:07:40', 105, 2, 1, 5),
		('2022-08-20 05:07:15', 108, 2, 1, 2),
		('2021-10-25 15:44:30', 108, 3, 1, 3),
		('2021-01-18 23:55:36', 107, 4, 8, 4),
		('2021-10-19 11:51:17', 103, 3, 10, 6),
		('2021-12-26 04:27:26', 103, 4, 8, 7),
		('2022-12-26 15:26:53', 103, 2, 1, 4),
		('2019-09-06 21:07:51', 103, 5, 4, 6)