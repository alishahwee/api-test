from flask import Flask, render_template, request
from dotenv import load_dotenv
import os

# Load environment variables
load_dotenv()

app = Flask(__name__)


@app.route("/map")
def map():
    """Render mapbox map."""

    return render_template("map.html", token=os.environ.get("MAPBOX_TOKEN"))


@app.route("/campgrounds")
def campgrounds():
    """Returns a list of campgrounds."""

    return render_template("campgrounds.html")
