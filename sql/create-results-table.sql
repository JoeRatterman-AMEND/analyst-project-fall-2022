IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='FactWeather' and xtype='U')
    CREATE TABLE FactWeather(
    temp         NUMERIC(6,2) NOT NULL PRIMARY KEY 
    ,feels_like   NUMERIC(6,2) NOT NULL
    ,temp_min     NUMERIC(6,2) NOT NULL
    ,temp_max     NUMERIC(6,2) NOT NULL
    ,pressure     INTEGER  NOT NULL
    ,humidity     INTEGER  NOT NULL
    ,lon          NUMERIC(8,4) NOT NULL
    ,lat          NUMERIC(7,4) NOT NULL
    ,GeographyKey VARCHAR(10) NOT NULL
    ,updated_at   DATETIME  NOT NULL
    );
GO


