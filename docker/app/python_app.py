#!/usr/bin/env python

from flask import Flask
from flask import request
from flask import jsonify

app = Flask(__name__)

@app.route('/')
def hello_world():
    json_response = {
        'ip' : request.environ['REMOTE_ADDR'],
        'user-agent' : request.headers.get('User-Agent')
    }
    return jsonify(json_response), 200

if __name__ == '__main__':
    app.run(debug=False,host='0.0.0.0')
