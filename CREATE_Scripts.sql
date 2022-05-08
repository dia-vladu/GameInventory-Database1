-- sa fie selectat master sus langa butonul de Execute

CREATE DATABASE Ubisoft
GO

-----------------------------------------------------------------------------

--sa fie selectat Ubisoft sus langa butonul de Execute

-- TABLE USERS
CREATE TABLE [dbo].[User](
	UserID int IDENTITY(1,1) PRIMARY KEY,
	FirstName nvarchar(30) NOT NULL,
	LastName nvarchar(30) NOT NULL,
	Email nvarchar(50) NOT NULL,
	BirthDate date NOT NULL,
	Nationality nvarchar(30) NOT NULL,
	Gender char(1)
)

-- TABLE PLATFORMS
CREATE TABLE [dbo].[Platform](
	PlatformID int IDENTITY(1,1) PRIMARY KEY,
	PlatformName nvarchar(30) NOT NULL
)

-- TABLE EDITIONS
CREATE TABLE [dbo].[Edition](
	EditionID int IDENTITY(1,1) PRIMARY KEY,
	EditionName nvarchar(30) NOT NULL,
	AdditionalPrice money
)

-- TABLE GAMES
CREATE TABLE [dbo].[Game](
	GameID int IDENTITY(1000,1)PRIMARY KEY,
	Title nvarchar(50) NOT NULL,
	Genre nvarchar(30) NOT NULL,
	ReleaseDate date NOT NULL,
	Developer nvarchar(30) NOT NULL,
	Price money NOT NULL,
	Description nvarchar(200)
)

-- TABLE INVENTORIES
CREATE TABLE [dbo].[Inventory](
	InventoryID int IDENTITY(100,1) PRIMARY KEY,
	UserId int NOT NULL,
	FOREIGN KEY (UserId) REFERENCES [dbo].[User](UserID)
)

-- TABLE ITEMS
CREATE TABLE [dbo].[Item](
	ItemID int IDENTITY(200,1) PRIMARY KEY,
	AcquisitionDate datetime NOT NULL,
	InventoryId int NOT NULL,
	GameId int NOT NULL,
	PlatformId int NOT NULL,
	EditionId int NOT NULL,
	FOREIGN KEY (InventoryId) REFERENCES [dbo].[Inventory](InventoryID),
	FOREIGN KEY (GameId) REFERENCES [dbo].[Game](GameID),
	FOREIGN KEY (PlatformId) REFERENCES [dbo].[Platform](PlatformID),
	FOREIGN KEY (EditionId) REFERENCES [dbo].[Edition](EditionID)
)


