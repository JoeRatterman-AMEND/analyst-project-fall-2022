import pyodbc 

def select_rows(table:str):
    conn = pyodbc.connect('Driver={SQL Server};'
                        'Server=localhost\SQLEXPRESS;'
                        'Database=AdventureWorksDW2019;'
                        'Trusted_Connection=yes;')
    
    cursor = conn.cursor()
    cursor.execute(f'SELECT * FROM dbo.{table}')
    
    for i in cursor:
        print(type(i))
        print(i)



# Sample Run - Insert Table name to query 
select_rows('DimAccount')