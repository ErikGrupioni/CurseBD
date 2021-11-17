CREATE OR ALTER VIEW vw_ListAllCourse
as
select
    [Course].[Title] as [Course],
    [Student].[Name] as [Student],
    [StudentCourse].[Progress],
    [StudentCourse].[LastUpdateDate]
FROM
    [Course]
    LEFT JOIN [StudentCourse] ON [StudentCourse].[CourseId] = [Course].[Id]
    LEFT JOIN [Student] ON [StudentCourse].[StudentId] = [Student].[Id]