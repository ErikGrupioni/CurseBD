USE [balta]
GO

SELECT * from [Course]
select * from [Student]
select * from [StudentCourse]

SELECT NEWID()

INSERT INTO
    [Student]
VALUES (
    '549a8376-ef82-4843-9d63-c68fe0c88787',
    'Guilherme Ortiz',
    'guicortiz@guicortiz.io',
    '1234567890123',
    '16999999999',
    '1998-01-28',
    GETDATE()
)

INSERT INTO
    [StudentCourse]
VALUES
    ('5ef614da-366d-6156-d049-694800000000',
    '549a8376-ef82-4843-9d63-c68fe0c88787',
    50,
    0,
    '2021-10-15',
    GETDATE()
    )
