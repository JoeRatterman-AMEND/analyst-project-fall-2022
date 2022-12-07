
/* Drop view if exists */
if exists(select 1 from sys.views where name='SalesView' and type='v')
drop view SalesView;
go

/* Create View */
create view SalesView
as

with sales_demand as (

	/* Query sales data */
	select	
		year(OrderDate) as OrderYear
		, month(OrderDate) as OrderMonth
		, convert(date, OrderDate) as OrderDate
		, OrderDateKey
		, CustomerKey
		, SalesTerritoryKey
		, ProductKey
		, SalesAmount
	from FactInternetSales

) 

, customer_info as (

	/* Query Customer Information */ 
	select
		CustomerKey
		, GeographyKey
		, MaritalStatus
		, YearlyIncome
		, TotalChildren
		, NumberChildrenAtHome
		, EnglishEducation
		, HouseOwnerFlag
		, NumberCarsOwned
		, CommuteDistance
	from DimCustomer

) 

, geo_regions as (

	/* Query geography regions */ 
	select 
		GeographyKey
		, StateProvinceCode
		, SalesTerritoryKey
		, CountryRegionCode
	from DimGeography

)

, prod_det as (

	/* Query product detail */ 
	select
		ProductKey
		, ProductAlternateKey
		, EnglishProductName
	from DimProduct

)

/* Join sales demand with regions data */
select
	sd.OrderYear
	, sd.OrderMonth
	, sd.OrderDate
	, sd.OrderDateKey
	, sd.CustomerKey
	, sd.SalesTerritoryKey
	, sd.SalesAmount
	, gr.CountryRegionCode
	, gr.StateProvinceCode
    , pd.ProductKey
	, pd.ProductAlternateKey
	, pd.EnglishProductName
from sales_demand as sd
left join DimCustomer dc
on sd.CustomerKey = dc.CustomerKey
left join geo_regions gr
on dc.GeographyKey = gr.GeographyKey
left join prod_det pd
on sd.ProductKey = pd.ProductKey

select * from SalesView