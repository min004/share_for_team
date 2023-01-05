from flask import Flask, request, jsonify, request

app = Flask(__name__)


@app.route('/login', methods=['GET', 'POST'])
def userLogin():
    if request.method=="GET":
        user = request.get_json()  # json 데이터를 받아옴
        return jsonify(user)  # 받아온 데이터를 다시 전송
    elif request.method=="POST":
        user = request.get_json()  # json 데이터를 받아옴
    return jsonify(user)  # 받아온 데이터를 다시 전송

@app.route('/environments/<language>')
def environments(language):
    return jsonify({"language": language})


if __name__ == "__main__":
    app.run()