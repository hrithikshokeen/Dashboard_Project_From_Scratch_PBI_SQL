---- Cleaned Product table and Joined Other table too ---
SELECT P.[ProductKey]
      ,P.[ProductAlternateKey] As ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,P.[EnglishProductName] As [Product Name]
	  ,PS.[EnglishProductSubcategoryName] as [Sub Category] -- Joined Product Subcategory  --
      ,PC.EnglishProductCategoryName as [Product Category]  -- Joined Product category -- 
	  --,[SpanishProductName]
      --,[FrenchProductName]
      --,[FinishedGoodsFlag]
      ,P.[Color] as [Product Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      ,P.[Size] as [Product Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine]
      --,[Class]
      --,[Style]
      ,P.[ModelName] as [Product Model Name]
      --,[LargePhoto]
      ,P.[EnglishDescription] as [Product Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,isnull(P.[Status],'Outdated') as [Product Status]
	  ,P.[StandardCost]
      ,P.[ListPrice]
	  ,P.[DealerPrice]
	  ,PC.ProductCategoryKey
  FROM 
   [dbo].[DimProduct] as P
    Left join [dbo].[DimProductSubcategory] as PS on PS.ProductSubcategoryKey = P.ProductSubcategoryKey
    Left join [dbo].[DimProductCategory] as PC on PS.ProductcategoryKey = PC.ProductCategoryKey
   --where PC.ProductCategoryKey = 4
   order by 
    P.ProductKey ASC