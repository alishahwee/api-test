from sqlalchemy.sql.schema import ForeignKey
from sqlalchemy import create_engine, Table, Column, Integer, String, MetaData

meta = MetaData()

engine = create_engine("postgresql:///state_parks", echo=True)

parks = Table(
    "parks",
    meta,
    Column("id", Integer, primary_key=True),
    Column("name", String, nullable=False),
    Column("address", String, nullable=False),
    Column("url", String, nullable=False),
)

images = Table(
    "images",
    meta,
    Column("parks_id", Integer, ForeignKey("parks.id"), nullable=False),
    Column("url", String),
)

activities = Table(
    "activities",
    meta,
    Column("parks_id", Integer, ForeignKey("parks.id"), nullable=False),
    Column("activity", String),
)

if __name__ == "__main__":
    meta.create_all(engine)
