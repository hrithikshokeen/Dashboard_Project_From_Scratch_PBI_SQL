-- Cleaned Date table --
SELECT [DateKey]
      ,[FullDateAlternateKey] as Date
      --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] as Day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth] 
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] as WeekNr
      ,[EnglishMonthName] as Month
	  ,left([EnglishMonthName],3) as MonthShort
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] as MonthNr
      ,[CalendarQuarter] as Quater
      ,[CalendarYear] as Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
    where [CalendarYear] >= 2019
  order by [CalendarYear] DESC
