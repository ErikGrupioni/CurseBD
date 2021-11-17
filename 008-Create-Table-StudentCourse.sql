USE [balta]

CREATE TABLE [StudentCourse]
(
    [CourseId] UNIQUEIDENTIFIER NOT NULL,
    [StudentId] UNIQUEIDENTIFIER NOT NULL,
    [Favorite] BIT NOT NULL,
    [Progress] TINYINT NOT NULL,
    [StartDate] DATETIME NOT NULL,
    [LastUpdateDate] DATETIME NULL,
    CONSTRAINT [PK_StudentCourse] PRIMARY KEY ([StudentId],[CourseId]),
    CONSTRAINT [FK_StudentCourse_Student_StudentId] FOREIGN KEY ([StudentId]) REFERENCES [Student]([Id]) ON DELETE no ACTION,
    CONSTRAINT [FK_StudentCourse_Course_CourseId] FOREIGN KEY ([CourseId]) REFERENCES [Course]([Id]) ON DELETE no ACTION,
);
GO