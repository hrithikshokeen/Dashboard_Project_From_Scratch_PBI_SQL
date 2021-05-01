/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ProductSubcategoryKey]
      ,[ProductCategoryKey]
      --,[ProductSubcategoryAlternateKey]
      ,[EnglishProductSubcategoryName]
      --,[SpanishProductSubcategoryName]
      --,[FrenchProductSubcategoryName]
  FROM [AdventureWorksDW2019].[dbo].[DimProductSubcategory]