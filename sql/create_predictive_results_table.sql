IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='ForecastTable' and xtype='U')
    CREATE TABLE ForecastTable(
    OrderDate            VARCHAR(50) NOT NULL
    ,sales_terr_key      VARCHAR(4) NOT NULL
    ,item                VARCHAR(30) NOT NULL
    ,rolling_sales_pred  NUMERIC(10,2) NOT NULL
    );
GO
	

	truncate table ForecastTable