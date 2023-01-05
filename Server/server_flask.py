from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def root():
    parameter_dict = request.args.to_dict()
    if len(parameter_dict) == 0:
        return 'No parameter'

    parameters = ''
    for key in parameter_dict.keys():
        parameters += 'key: {}, value: {}<br>'.format(key, request.args[key])
    return parameters

@app.route('/register', method=['POST'])
def get_user_information()

if __name__ == '__main__':
    app.debug = True
    app.run(degug=True, host='0.0.0.0', port=port)