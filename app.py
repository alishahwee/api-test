from flask import Flask, render_template, request, redirect
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
    SELECT name, address, coordinates, url
    FROM parks
    WHERE id = :id
    """

    QUERY_2 = """
    SELECT activity
    FROM activities
    WHERE parks_id = :id
    """

    name, address, latlng, url = db.session.execute(QUERY, {"id": parks_id}).fetchone()

    activities = db.session.execute(QUERY_2, {"id": parks_id}).fetchall()

    lnglat = [float(c) for c in latlng.split(",")]

    lnglat.reverse()

    return render_template(
        "map.html",
        token=os.environ.get("MAPBOX_TOKEN"),
        name=name,
        address=address,
        lnglat=lnglat,
        latlng=latlng,
        url=url,
        activities=activities,
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

    return redirect(f"/map?id={parks_id[0]}")
