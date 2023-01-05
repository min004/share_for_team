from flask import Flask, request, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)


@app.route('/login', methods=['POST'])
def userLogin():
    user = request.get_json()  # json 데이터를 받아옴
    return jsonify(user)  # 받아온 데이터를 다시 전송


@app.route('/environments/<language>')
def environments(language):
    return jsonify({"language": language})


if __name__ == "__main__":
    app.run(debut=True, host='0.0.0.0')

    