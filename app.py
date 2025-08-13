from flask import Flask
import environment

app = Flask(__name__)


@app.route("/")
def hello_world():
    """A simple hello world endpoint."""
    return "Hello, World!"


if __name__ == "__main__":
    app.run(host=environment.HOST,
            port=environment.PORT,
            debug=environment.DEBUG)
