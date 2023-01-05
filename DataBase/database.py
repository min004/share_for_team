# postgresql 연결

import sqlalchemy
import pandas as pd

def connect(user='postgres', password='0000', db='Project_login', host='localhost', port=5432):
    '''Returns a connection and a metadata object'''
    # We connect with the help of the PostgreSQL URL
    # postgresql://federer:grandestslam@localhost:5432/tennis
    url = 'postgresql://{}:{}@{}:{}/{}'
    url = url.format(user, password, host, port, db)

    # The return value of create_engine() is our connection object
    engine = sqlalchemy.create_engine(url, client_encoding='utf8')

    # We then bind the connection to MetaData()
    #meta = sqlalchemy.MetaData(bind=con, reflect=True)

    return engine #, meta

# engine 객체생성, engine connect


engine = connect(user='postgres', password='0000', db='Project_login', host='localhost', port=5432)
connection = engine.connect()


def table_name(tablename='테이블명'):
    # metadata 생성
    metadata = sqlalchemy.MetaData()

    # table명 지정
    table = sqlalchemy.Table(tablename, metadata, autoload=True, autoload_with=engine)

def run_query():

    # select * from table 과 같음
    query = sqlalchemy.select([table])

    # 쿼리 실행
    result_proxy = connection.execute(query)
    result_set = result_proxy.fetchall()


values = [999, 'test1', 'test2', 'test3']
query = sqlalchemy.insert(table).values(values)

result_proxy = connection.execute(query)
result_proxy.close()

# select * from table 과 같음
query = sqlalchemy.select([table])

# 이때 query의 내용을 출력해보면 sql query인 것을 알 수 있음
print(query)

# 쿼리 실행
result_proxy = connection.execute(query)
result_set = result_proxy.fetchall()

# 결과 print
for i in range(3):
    print(result_set[i])
