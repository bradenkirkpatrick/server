from flask import Flask, request, jsonify, render_template
import sys

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('home.html')

if __name__ == '__main__':
    if sys.argv[1] == 'deploy':
        app.run(host=sys.argv[2], port=sys.argv[3])
    else:
        app.run(debug=True)

