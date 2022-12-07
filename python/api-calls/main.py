# Standard Imports
import json 
from datetime import datetime as dt

# Package Imports
import pandas as pd 
import requests
from decouple import config

#Custom Functions
from helper import insert_rows, merge_dicts

#Define Function to call Open Weather Map API
def make_call(lat: float, long:float) -> str:
    """Function to make calls to Open Weather Map API

    Args:
        lat (float): latitude of desired location
        long (float): longitude of desired location

    Returns:
        str: API Response
    """
    api_key = config('API_KEY')
    url = f'https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={long}&appid={api_key}'
    payload={}
    headers = {}
    response = requests.request("GET", url, headers=headers, data=payload, timeout=5)
    if response.status_code == 200:
        print('SUCCESS')
    else:
        print('FAILURE')
    response = json.loads(response.text)
    return response

df_map = pd.read_csv('C:/Users/JoeRatterman/Documents/GitHub/Intro-to-Data-Pipelines/data/mapping_file.csv')

results = []

# Loop through mapping file and pass through api
for i in range(0,len(df_map)):#len(df_map)):
    lat = df_map['Latitude'][i]
    long = df_map['Longitude'][i]
    key = {'GeographyKey':df_map['GeographyKey'][i]}
    response = make_call(lat, long)
    record = merge_dicts(response['main'], response['coord'])
    record = merge_dicts(record, key)
    print(record)
    results.append(record)
    print('<--------------------------------------------------->')

df_final = pd.DataFrame.from_records(results)
df_final['updated_at'] = dt.now().strftime("%d/%m/%Y %H:%M:%S")

#Insert Rows to SQL Table
insert_rows(df_final, truncate=1)
