CREATE OR ALTER PROCEDURE SP_ProgressStudent
    @StudentId UNIQUEIDENTIFIER
AS
select
    [Student].[Name] as [Student],
    [Course].[Title] as [Course],
    [StudentCourse].[Progress],
    [StudentCourse].[LastUpdateDate]
FROM
    [StudentCourse]
    INNER JOIN [Student] ON [StudentCourse].[StudentId] = [Student].[Id]
    INNER JOIN [Course] ON [StudentCourse].[CourseId] = [Course].[Id]
WHERE
    [StudentCourse].[StudentId] = @StudentId
    AND [StudentCourse].[Progress] < 100