from flask import Flask, render_template
import os

app = Flask(__name__)

@app.route("/map")
def map():
    return render_template("map.html", token = os.environ["MAPBOX_TOKEN"])
