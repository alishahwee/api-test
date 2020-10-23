from flask import Flask, render_template, request
from dotenv import load_dotenv
from flask_sqlalchemy import SQLAlchemy
import os

# Load environment variables
load_dotenv()

app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = "postgresql:///state_parks"
app.config["SQLALCHEMY_ECHO"] = True
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
db = SQLAlchemy(app)


@app.route("/map")
def map():
    """Render mapbox map."""

    parks_id = request.args.get("id")

    QUERY = """
    SELECT name, coordinates
    FROM parks
    WHERE id = :id
    """

    name, coords = db.session.execute(QUERY, {"id": parks_id}).fetchone()

    coords = [float(c) for c in coords.split(",")]

    coords.reverse()

    return render_template(
        "map.html", token=os.environ.get("MAPBOX_TOKEN"), name=name, coords=coords
    )


@app.route("/campgrounds")
def campgrounds():
    """Returns a list of campgrounds."""

    return render_template("campgrounds.html")
