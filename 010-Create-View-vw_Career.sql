SELECT
    [Career].[Id],
    [Career].[Title],
    [Career].[Url],
    (SELECT COUNT(CareerId) from [CareerItem] where [CareerId] = [Career].[Id]) as [Courses]
FROM
    [Career]
