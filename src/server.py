from flask import Flask
from pyvrt import weather
from pyvrt.media import stubru

app = Flask(__name__, instance_relative_config=True)
app.debug = True


@app.route('/weather')
def get_weather():
    w = weather.summary()
    return w


@app.route('/stubru')
def get_stubru():
    c = stubru.current()
    return c


if __name__ == "main":
    app.run(debug=True, host="0.0.0.0")
