import pyodbc   
import pandas as pd


def insert_rows(df, truncate: 1):
    conn = pyodbc.connect('Driver={SQL Server};'
                        'Server=localhost\SQLEXPRESS;'
                        'Database=AdventureWorksDW2019;'
                        'Trusted_Connection=yes;')
    cursor = conn.cursor()
    print('Connection Established')

    if truncate==1:
        cursor.execute("TRUNCATE TABLE FactWeather")
    # Insert Dataframe into SQL Server:
    for index, row in df.iterrows():
        cursor.execute("INSERT INTO FactWeather (temp,feels_like,temp_min,temp_max,pressure,humidity,lon,lat,GeographyKey,updated_at) values(?,?,?,?,?,?,?,?,?,?)"
        ,row.temp
        ,row.feels_like
        ,row.temp_min
        ,row.temp_max
        ,row.pressure
        ,row.humidity
        ,row.lon
        ,row.lat
        ,row.GeographyKey
        ,row.updated_at
        )
        
    conn.commit()
    cursor.close()
    print('Insert Complete')

def merge_dicts(x: dict, y: dict) -> dict:
    """combine two dictionaries into one"""
    z = x.copy()
    z.update(y)
    return z 
