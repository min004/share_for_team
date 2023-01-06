from flask import Flask, request, jsonify, render_template
import requests
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
from flask_cors import CORS

from Server.Infomation import Information

# from models import Phishing

# 명령어
# flask db init
# flask db migrate
# flask db upgrade


# create a table


    # def save(self):
    #     db.session.add(self)
    #     db.session.commit()
    #
    # @staticmethod
    # def get_all():
    #     return Information.query.all()
    #
    # def repr(self):
    #     return f"<Information('{self.id}', '{self.password}, '{self.email}', '{self.name}')>"
    #
    # # def ():
    # #


##################################################################################################################
# server
# @app.route("/")
# def main():
#     return render_template('index.js')


# 1. register -> post, login -> post
# --------------------------------------------------------------  route 확인


@app.route('/api/phishing/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        if request.is_json:
            # --------------------------------- data 들어오는 것인지 or id, pw, email 하나하나 만들어 주어야 하는 것인지
            data = request.get_json()

            id = data['id']
            password = data['pw']
            email = data['email']
            name = data['name']
            # -------------------------------------------- (1) response (원래 만들었던 server.py 참고하여 작성...?) -> (2) UI 작성
            # ---------------------------------- DataBase 와 연결
            inf = Information(id, password, email, name)
            response = jsonify({
                ...
            })
        else:
            response = jsonify({
                ...
            })
            response.status_code = 201
        return response


# ----------------------------------------- route -> post (login)
@app.route('/api/phising/database', methods=['GET', 'POST'])
def get_database():
    information_all = Information.get_all()
    results = []

    for info in information_all:
        obj = {
            'url': info.url
        }
        results.append(obj)
    response = jsonify(results)
    response.status_code = 200
    return response


# 데이터베이스 연결
@app.route('/api/phising/count', methods=['GET'])
def get_counts():
    information_all = Information.get_all()
    count = len(information_all)
    response = jsonify({
        'count': count
    })
    response.status_code = 200
    return response

