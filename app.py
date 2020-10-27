from flask import Flask, render_template, request, redirect, jsonify
from dotenv import load_dotenv
from flask import json
from flask_sqlalchemy import SQLAlchemy
import os
import requests
from helpers import Coordinates

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
    SELECT coordinates
    FROM parks
    WHERE id = :id
    """

    latlon = db.session.execute(QUERY, {"id": parks_id}).fetchone()

    coords = Coordinates(latlon[0])

    return render_template(
        "map.html", token=os.environ.get("MAPBOX_TOKEN"), coords=coords
    )


@app.route("/campground")
def campground():
    """Return information about the campground."""

    parks_id = request.args.get("id")

    QUERY = """
    SELECT name, address, url
    FROM parks
    WHERE id = :id
    """

    QUERY_2 = """
    SELECT activity
    FROM activities
    WHERE parks_id = :id
    """

    name, address, url = db.session.execute(QUERY, {"id": parks_id}).fetchone()

    activities = db.session.execute(QUERY_2, {"id": parks_id}).fetchall()

    return render_template(
        "campground.html",
        name=name,
        address=address,
        url=url,
        activities=activities,
        id=parks_id,
    )


@app.route("/", methods=["GET", "POST"])
def campgrounds():
    """Returns a list of campgrounds."""

    QUERY = """
    SELECT name
    FROM parks
    ORDER BY 1
    """

    names = db.session.execute(QUERY).fetchall()

    return render_template("campgrounds.html", names=names)


@app.route("/search")
def search():
    name = request.args.get("pname")

    name = f"%{name.lower()}%"

    QUERY = """
    SELECT id
    FROM parks
    WHERE LOWER(name)
    LIKE :name
    """

    parks_id = db.session.execute(QUERY, {"name": name}).fetchone()

    return redirect(f"/campground?id={parks_id[0]}")


@app.route("/weather")
def weather():
    """Show weather for a campground."""

    parks_id = request.args.get("id")

    QUERY = """
    SELECT coordinates
    FROM parks
    WHERE id = :id
    """

    latlon = db.session.execute(QUERY, {"id": parks_id}).fetchone()

    coords = Coordinates(latlon[0])

    url = "https://api.climacell.co/v3/weather/forecast/daily"

    querystring = {
        "lat": coords.lat,
        "lon": coords.lon,
        "unit_system": "us",
        "start_time": "now",
        "fields":"temp,precipitation,wind_speed",
        "apikey": os.getenv("CLIMACELL_KEY"),
    }

    response = requests.request("GET", url, params=querystring)

    return jsonify(response.text)
