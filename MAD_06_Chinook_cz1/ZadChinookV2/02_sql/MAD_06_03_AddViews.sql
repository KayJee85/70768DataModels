USE [Chinook]
GO

	DROP VIEW IF EXISTS [dbo].[vw_InvoiceLine]
	GO

	CREATE VIEW [dbo].[vw_InvoiceLine]
	AS
	SELECT 
		[InvoiceLineId]
	,	[InvoiceId]
	,	[TrackId]
	,	[UnitPrice]
	,	[Quantity]
	,	[UnitPrice] * [Quantity] AS [TotalLineAmount]
	FROM [dbo].[InvoiceLine]
	GO