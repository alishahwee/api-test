from flask import Flask, render_template, request
from dotenv import load_dotenv
from flask_sqlalchemy import SQLAlchemy
import os

# Load environment variables
load_dotenv()

app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = "postgresql:///state_parks"
db = SQLAlchemy(app)


@app.route("/map")
def map():
    """Render mapbox map."""

    return render_template("map.html", token=os.environ.get("MAPBOX_TOKEN"))


@app.route("/campgrounds")
def campgrounds():
    """Returns a list of campgrounds."""

    return render_template("campgrounds.html")
