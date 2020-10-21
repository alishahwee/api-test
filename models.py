from sqlalchemy import create_engine, Table, Column, Integer, String, MetaData

meta = MetaData()

engine = create_engine("postgresql:///camping", echo=True)

state_parks = Table(
    "state_parks",
    meta,
    Column("id", Integer, primary_key=True),
    Column("name", String, nullable=False),
    Column("address", String, nullable=False),
    Column("url", String, nullable=False),
)

if __name__ == "__main__":
    meta.create_all(engine)
