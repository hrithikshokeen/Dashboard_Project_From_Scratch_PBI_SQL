-- Cleaned Customer Table --	
SELECT [CustomerKey]
      ,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName] as [First Name]
      --,[MiddleName]
      ,[LastName] as [Last Name]
	  ,[FirstName]+ ' ' +[LastName] as [Full Name]  -- COmbined Names --
      --,[NameStyle]
      --,[BirthDate] as [Birth Date]
	  ,(year(GETDATE()) - (year([BirthDate]))) as Age
      --,[MaritalStatus]
      --,[Suffix]
      ,case [Gender] when 'M' then 'Male' When 'F' then 'Female' end as Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation] as Education
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation] As Ocupation
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase]
      --,[CommuteDistance]
  FROM [dbo].[DimCustomer] 
