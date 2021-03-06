from flask import Flask
app = Flask(__name__)
@app.route('/')
def greeting():
    return 'Welcoming to Docker Compose Demo', 200
@app.route('/hello')
def hello():
    return 'Hello World', 200
@app.route('/good')
def good():
    return 'Good afternoon', 200
if __name__ == '__main__':
    app.run('0.0.0.0', debug=True)