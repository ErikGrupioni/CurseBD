CREATE OR ALTER VIEW vw_Courses AS
SELECT 
    [Course].[Id],
    [Course].[Tag],
    [Course].[Title],
    [Course].[Url],
    [Course].[Summary],
    [Course].[CreateDate],
    [Category].[Title] as [Category],
    [Author].[Name] as [Author]
FROM 
    [Course]
    INNER JOIN [Category] ON [Course].[CategoryId] = [Category].[Id]
    INNER JOIN [Author] ON [Course].[AuthorId] = [Author].[Id]

WHERE
    [Active] = 1
