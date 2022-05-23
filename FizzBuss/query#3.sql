CREATE TABLE #TEST2 ([Id] INT, [A] BIT, [B] BIT, [C] BIT, [D] BIT, [E] BIT)
INSERT INTO #TEST2 ([Id], [A], [C], [E]) VALUES (1, 'true', 'false', 'true')
INSERT INTO #TEST2 ([Id], [A], [B], [C]) VALUES (2, 'true', 'true', 'true')
INSERT INTO #TEST2 ([Id], [C], [D], [E]) VALUES (1, 'false', 'false', 'true')


CREATE PROCEDURE sp_invert
	@id int,
	@column CHAR(1)
AS
BEGIN

	SET NOCOUNT ON;
	declare @sql varchar(5000);
	set @sql = 'update #TEST2 set ' + @column+ ' = ~' +@column;

	exec (@sql);
END
GO
