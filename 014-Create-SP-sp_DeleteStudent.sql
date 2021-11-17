CREATE OR ALTER PROCEDURE sp_DeleteStudent(
     @StudentId UNIQUEIDENTIFIER
)
AS
BEGIN TRAN
DELETE FROM [StudentCourse] where [StudentId] = @StudentId

DELETE FROM [Student] WHERE [Id] = @StudentId
-- COMMIT TRAN
-- ROLLBACK
select * from [StudentCourse]

SELECT * from [Student]