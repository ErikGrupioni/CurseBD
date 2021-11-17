USE [balta]

CREATE TABLE [Career]
(
    [Id] UNIQUEIDENTIFIER NOT NULL,
    [Title] NVARCHAR(80) NOT NULL,
    [Summary] NVARCHAR(80) NOT NULL,
    [Url] NVARCHAR(450) NOT NULL,
    [DurationInMinutes] INT NOT NULL,
    [Active] BIT NOT NULL,
    [Featured] BIT NOT NULL,
    [Tags] NVARCHAR(160) NOT NULL,
    CONSTRAINT [PK_Career] PRIMARY KEY ([Id])
);
GO