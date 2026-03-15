from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return '<h1>Hello Akshay! Jenkins + Docker is Working! 🚀 Hurraaaaaaaaaaaaaay 11</h1>'

if __name__ == '__main__':
    # 0.0.0.0 matlab ye container ke bahar se accessible hoga
    app.run(host='0.0.0.0', port=5000)
