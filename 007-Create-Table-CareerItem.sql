USE [balta]

CREATE TABLE [CareerItem]
(
    [Id] UNIQUEIDENTIFIER NOT NULL,
    [CourseId] UNIQUEIDENTIFIER NULL,
    [Title] NVARCHAR(160) NOT NULL,
    [Description] TEXT NOT NULL,
    [Order] TINYINT NOT NULL,
    [CareerId] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_CareerItem] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_CareerItem_Career_CareerId] FOREIGN KEY ([CareerId]) REFERENCES [Career]([Id]) ON DELETE no ACTION,
    CONSTRAINT [FK_CareerItem_Course_CourseId] FOREIGN KEY ([CourseId]) REFERENCES [Course]([Id]) ON DELETE no ACTION,
);
GO