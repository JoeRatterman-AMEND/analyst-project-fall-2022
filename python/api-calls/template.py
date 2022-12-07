# Standard Imports
import json 
from datetime import datetime as dt

# Package Imports
import pandas as pd 
import requests
from decouple import config

#Custom Functions
from helper import insert_rows, merge_dicts

api_key = config('API_KEY')
lat = '35.241615'
lon = '-81.775456'
url = f'https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={api_key}'

payload={}
headers = {}
response = requests.request("GET", url, headers=headers, data=payload)

print(f'Here is what the API gives us {response}')
# print(response.status_code)
# print(response.text)
# print(json.loads(response.text)['main'])


# Exercise

### How can we get this response into a more workable format (e.g. dict or dataframe?)

# Pull in mapping data to map AW data to Lat Long
# df_map = pd.read_csv('./data/mapping_file.csv')

# results = []

# for _ in range(len(?)):
#     lat = #df_map[?][?]
#     lon = #df_map[?][?]
#     key = {'GeographyKey':df_map['GeographyKey'][i]} # Get the PK for data warehouse
#     url = f'https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={api_key}'
#     response = requests.request("GET", url, headers=headers, data=payload)
#     response = #json.loads(?)
#     record = #merge_dicts(response[?], response['coord'])
#     results.append(record)

# df_final = # pd.DataFrame.from_records(?)
# df_final['updated_at'] = dt.now().strftime("%d/%m/%Y %H:%M:%S")

# # Now we have a nice clean Data Frame to work with
# print(df_final)
