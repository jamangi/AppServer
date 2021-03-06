from flask import Flask
import os
app = Flask(__name__)

@app.route("/")
def hello():
    return "<h1 style='color:blue'>Hello There!</h1>"

@app.route("/test")
def test():
   return "<h1 style='color:blue'>Hello from Test!</h1>"

if __name__ == "__main__":
    port = os.getenv('HEARTPORT', 5000)
    app.run(host='0.0.0.0', port=port)