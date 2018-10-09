from flask import Flask
import os
app = Flask(__name__)

@app.route("/")
def hello():
    return "<h1 style='color:blue'>Hello There!</h1>"

if __name__ == "__main__":
	port = getenv('HEARTPORT', 8080)
    app.run(host='0.0.0.0', port='')