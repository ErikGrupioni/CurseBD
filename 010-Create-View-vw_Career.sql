CREATE OR ALTER VIEW vw_Career
as
SELECT
    [Career].[Id],
    [Career].[Title],
    [Career].[Url],
    COUNT([Id]) AS [Courses]
FROM
    [Career]
    INNER JOIN [CareerItem] ON [CareerItem].[CareerId] = [Career].[Id]
GROUP BY
    [Career].[Id],
    [Career].[Title],
    [Career].[Url]
