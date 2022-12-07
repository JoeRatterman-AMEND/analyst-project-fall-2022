IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='DimGeoMapping' and xtype='U')
	CREATE TABLE DimGeoMapping(
	   city           VARCHAR(14) NOT NULL PRIMARY KEY
	  ,state          VARCHAR(2) NOT NULL
	  ,zip            VARCHAR(7) NOT NULL
	  ,Latitude       NUMERIC(9,6) NOT NULL
	  ,Longitude      NUMERIC(11,6) NOT NULL
	  ,Accuracy_Score NUMERIC(4,2) NOT NULL
	  ,County         VARCHAR(19) NOT NULL
	  ,Country        VARCHAR(2) NOT NULL
	);

INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Cliffside','BC','V8Y 1L1',35.241615,-81.775456,1,'Rutherford County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Chula Vista','CA','91910',32.636922,-117.050072,1,'San Diego County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Burien','WA','98168',47.4702,-122.348,0.9,'King County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Berkeley','CA','94704',37.866975,-122.256729,1,'Alameda County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Bellingham','WA','98225',48.754401,-122.478836,1,'Whatcom County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Concord','CA','94519',37.984821,-122.011272,1,'Contra Costa County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('N. Vancouver','BC','V7L 4J4',45.678996,-122.720499,1,'Clark County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Beaverton','OR','97005',45.496289,-122.800146,1,'Washington County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Bellflower','CA','90706',33.888014,-118.12965,1,'Los Angeles County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Burlingame','CA','94010',37.567086,-122.367573,1,'San Mateo County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Burbank','CA','91502',34.177267,-118.31003,1,'Los Angeles County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Langley','BC','V3A 4R2',33.51791,-81.844,1,'Aiken County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Metchosin','BC','V9',38.05401,-79.84366,1,'Bath County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Port Hammond','BC','V6B 3P7',41.691701,-87.510921,1,'Lake County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Bremerton','WA','98312',47.578921,-122.79859,1,'Kitsap County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Beverly Hills','CA','90210',34.10263,-118.415972,1,'Los Angeles County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Haney','BC','V2W 1W2',34.084542,-85.419957,0.8,'Floyd County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Colma','CA','94014',37.687509,-122.438783,0.75,'San Mateo County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Victoria','BC','V8V',28.804947,-96.984711,1,'Victoria County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Royal Oak','BC','V8X',42.492485,-83.145375,1,'Oakland County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Langford','BC','V9',45.60245,-97.83038,1,'Marshall County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Sooke','BC','V0',38.05401,-79.84366,1,'Bath County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Oak Bay','BC','V8P',35.899658,-90.338292,1,'Craighead County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Vancouver','BC','V7L 4J4',45.678996,-122.720499,1,'Clark County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Coronado','CA','92118',32.699235,-117.209642,1,'San Diego County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Lemon Grove','CA','91945',32.732288,-117.037344,1,'San Diego County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Lebanon','OR','97355',44.526381,-122.827457,1,'Linn County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Milwaukie','OR','97222',45.446231,-122.639261,0.9,'Clackamas County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Downey','CA','90241',33.939164,-118.125851,1,'Los Angeles County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Glendale','CA','91203',34.153338,-118.262974,1,'Los Angeles County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Issaquah','WA','98027',47.497419,-122.010699,1,'King County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Grossmont','CA','91941',32.774845,-116.998359,1,'San Diego County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Palo Alto','CA','94303',37.374707,-122.181697,1,'Santa Clara County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Woodland Hills','CA','91364',34.153733,-118.593408,1,'Los Angeles County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Santa Monica','CA','90401',34.013666,-118.49375,1,'Los Angeles County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Torrance','CA','90505',33.807882,-118.347957,1,'Los Angeles County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('San Diego','CA','92102',32.716221,-117.117058,1,'San Diego County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Edmonds','WA','98020',47.806068,-122.372401,1,'Snohomish County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Lincoln Acres','CA','91950',32.664038,-117.083443,1,'San Diego County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('El Cajon','CA','92020',32.787514,-116.960836,1,'San Diego County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Corvallis','OR','97330',44.639931,-123.275969,1,'Benton County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Puyallup','WA','98371',47.212822,-122.317148,1,'Pierce County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Walla Walla','WA','99362',46.1341,-118.291407,1,'Walla Walla County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('La Jolla','CA','92806',33.859829,-117.86842,1,'Orange County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Long Beach','CA','90802',33.756024,-118.201101,1,'Los Angeles County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Novato','CA','94947',38.09502,-122.620893,1,'Marin County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Kirkland','WA','98033',47.673263,-122.187029,1,'King County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Lynnwood','WA','98036',47.804869,-122.285481,1,'Snohomish County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Salem','OR','97301',44.94878,-123.003655,1,'Marion County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('National City','CA','91950',32.671194,-117.084353,1,'San Diego County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Shawnee','BC','V8Z 4N5',35.295843,-96.960092,1,'Pottawatomie County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Portland','OR','97205',45.520562,-122.710231,1,'Multnomah County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Olympia','WA','98501',46.984767,-122.869079,1,'Thurston County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('San Gabriel','CA','91776',34.090776,-118.095091,1,'Los Angeles County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Spring Valley','CA','91977',32.718352,-117.000109,1,'San Diego County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Marysville','WA','98270',48.049576,-122.161951,1,'Snohomish County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Tacoma','WA','98403',47.265371,-122.457087,1,'Pierce County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Lake Oswego','OR','97034',45.408374,-122.691388,1,'Clackamas County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Oakland','CA','94611',37.820403,-122.250872,1,'Alameda County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Imperial Beach','CA','91932',32.578991,-117.117351,1,'San Diego County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Yakima','WA','98901',46.722625,-120.406039,1,'Yakima County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Santa Cruz','CA','95062',36.971549,-121.990571,1,'Santa Cruz County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Redmond','WA','98052',47.678756,-122.121034,1,'King County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('West Covina','CA','91791',34.061634,-117.893169,1,'Los Angeles County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Los Angeles','CA','90012',34.065875,-118.238728,1,'Los Angeles County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Renton','WA','98055',47.446982,-122.201521,1,'King County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Woodburn','OR','97071',45.148007,-122.876205,1,'Marion County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Everett','WA','98201',47.988661,-122.199795,1,'Snohomish County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Seattle','WA','98104',47.601884,-122.329459,1,'King County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Daly City','CA','94015',37.676864,-122.475234,1,'San Mateo County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('San Carlos','CA','94070',37.496461,-122.272556,1,'San Mateo County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Sedro Woolley','WA','98284',48.486147,-122.137243,1,'Skagit County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Newport Beach','CA','92625',33.640302,-117.769442,0.9,'Orange County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Lakewood','CA','90712',33.845624,-118.14645,1,'Los Angeles County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Redwood City','CA','94063',37.490387,-122.212846,1,'San Mateo County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Spokane','WA','99202',47.657497,-117.37897,1,'Spokane County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Port Orchard','WA','98366',47.542664,-122.587102,1,'Kitsap County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Oregon City','OR','97045',45.317893,-122.523602,1,'Clackamas County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('W. Linn','OR','97068',45.367509,-122.632994,1,'Clackamas County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Westminster','BC','V3L 1H4',39.830822,-105.03747,1,'Adams County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Mill Valley','CA','94941',37.886325,-122.562937,1,'Marin County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Fremont','CA','94536',37.565285,-121.982721,1,'Alameda County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Ballard','WA','98107',47.661245,-122.376374,1,'King County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Shawnee','BC','V9B 2C3',35.295843,-96.960092,1,'Pottawatomie County','US');
INSERT INTO DimGeoMapping(city,state,zip,Latitude,Longitude,Accuracy_Score,County,Country) VALUES ('Westminster','BC','V3L 1E7',39.830822,-105.03747,1,'Adams County','US');
