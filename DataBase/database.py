import sqlalchemy

def connect(user='postgres', password='0000', db='Project_login', host='localhost', port=5432):
    url = 'postgresql://{}:{}@{}:{}/{}'
    url = url.format(user, password, host, port, db)
    engine = sqlalchemy.create_engine(url, client_encoding='utf8')

    return engine

# engine 객체생성, engine connect
engine = connect(user='postgres', password='0000', db='Project_login', host='localhost', port=5432)
connection = engine.connect()

# metadata 생성
metadata = sqlalchemy.MetaData()

# table명 지정
table = sqlalchemy.Table('user_info', metadata, autoload=True, autoload_with=engine)

def getdb():
   # select * from table 과 같음
    query = sqlalchemy.select([table])
    # 쿼리 실행
    result_proxy = connection.execute(query)
    result_set = result_proxy.fetchall()

    return result_set
    
def register(id, password, email=None, name=None):
    values = [id, password, email, name]
    query = sqlalchemy.insert(table).values(values)
    result_proxy = connection.execute(query)
    result_proxy.close()