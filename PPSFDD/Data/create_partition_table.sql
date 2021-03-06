/****** Script for SelectTopNRows command from SSMS  ******/

--drop table  Sales.[SalesTerritoryPart]

-- Initially table only supports [CountryRegionCode] in ('AU','CA', 'DE');
SELECT TOP 1000 [TerritoryID]
      ,[Name]
      ,[CountryRegionCode]
      ,[Group]
      ,[SalesYTD]
      ,[SalesLastYear]
      ,[CostYTD]
      ,[CostLastYear]
      ,[rowguid]
      ,[ModifiedDate]
  into Sales.[SalesTerritoryPart]
  FROM [AdventureWorks].[Sales].[SalesTerritory]
  where [CountryRegionCode] in ('AU','CA', 'DE');


  select * from Sales.[SalesTerritoryPart]
