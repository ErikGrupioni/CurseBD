USE [balta]

CREATE TABLE [CareerItem]
(
    [CareerId] UNIQUEIDENTIFIER NOT NULL,
    [CourseId] UNIQUEIDENTIFIER NOT NULL,
    [Title] NVARCHAR(160) NOT NULL,
    [Description] TEXT NOT NULL,
    [Order] TINYINT NOT NULL,
    CONSTRAINT [PK_CareerItem] PRIMARY KEY ([CareerId],[CourseId]),
    CONSTRAINT [FK_CareerItem_Career_CareerId] FOREIGN KEY ([CareerId]) REFERENCES [Career]([Id]) ON DELETE no ACTION,
    CONSTRAINT [FK_CareerItem_Course_CourseId] FOREIGN KEY ([CourseId]) REFERENCES [Course]([Id]) ON DELETE no ACTION,
);
GO