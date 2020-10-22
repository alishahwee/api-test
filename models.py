"""Build our models and insert data from json."""

from sqlalchemy.sql.schema import ForeignKey
from sqlalchemy import create_engine, Table, Column, Integer, String, MetaData
import json

meta = MetaData()

engine = create_engine("postgresql:///state_parks", echo=True)

parks_table = Table(
    "parks",
    meta,
    Column("id", Integer, primary_key=True),
    Column("name", String, nullable=False),
    Column("address", String),
    Column("coordinates", String, nullable=False),
    Column("url", String, nullable=False),
)

images_table = Table(
    "images",
    meta,
    Column("parks_id", Integer, ForeignKey("parks.id"), nullable=False),
    Column("url", String),
)

activities_table = Table(
    "activities",
    meta,
    Column("parks_id", Integer, ForeignKey("parks.id"), nullable=False),
    Column("activity", String),
)


def insert_parks(json_file):
    """Decode json and insert into database."""

    with open(json_file) as f:
        parks = json.load(f)

        for park in parks:
            name = park["name"]
            address = park["address"]
            coordinates = park["lat_long"]
            activities = park["activities"]
            url = park["url"]
            images = park["images"]

            ins = parks_table.insert().values(
                name=name, address=address, coordinates=coordinates, url=url
            )
            parks_id = db.execute(ins).inserted_primary_key[0]
            db.execute(
                images_table.insert(),
                [{"parks_id": parks_id, "url": img_url} for img_url in images],
            )
            db.execute(
                activities_table.insert(),
                [
                    {"parks_id": parks_id, "activity": activity}
                    for activity in activities
                ],
            )


if __name__ == "__main__":
    db = engine.connect()
    meta.create_all(engine)
    insert_parks("parks.json")
    db.close()
