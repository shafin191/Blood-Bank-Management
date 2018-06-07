CREATE TABLE [dbo].[UserRegistration] (
    [UserId]       INT           IDENTITY (1, 1) NOT NULL,
    [UserName]     VARCHAR (100) NOT NULL,
    [UserMail]     VARCHAR (50)  NOT NULL,
    [UserPassword] VARCHAR (MAX) NOT NULL,
    [UserDivision] VARCHAR (30)  NOT NULL,
    [UserDistrict] VARCHAR (40)  NOT NULL,
    [UserAddress]  VARCHAR (MAX) NOT NULL,
    [UserPhone]    VARCHAR (20)  NOT NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC)
);

