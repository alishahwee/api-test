from bs4 import BeautifulSoup
from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
import json

# from sqlalchemy import create_engine, Table, Column, Integer, String, MetaData

# db = create_engine("postgresql+psycopg2://alishahwee@localhost:5432/parks", echo=True)
# meta = MetaData()

parks_url = "https://www.dnr.state.mn.us"

parkfinder = "/parkfinder/index.html"

driver = webdriver.Chrome(ChromeDriverManager().install())

driver.get(parks_url + parkfinder)

html = driver.page_source

soup = BeautifulSoup(html, "html5lib")

parks = []

for link in soup.select(".list a"):

    try:
        name = link.string
        url = parks_url + link.get("href")
        driver.get(parks_url + link.get("href"))
        soup_page = BeautifulSoup(driver.page_source, "html5lib")
        images = [img.get("src") for img in soup_page.select("#thumbs img")]
        images.append(soup_page.find(class_="page_banner").get("src"))
        text_list = [
            text
            for text in soup_page.select_one("#park .row .col-sm-8 p").stripped_strings
        ]
        address = f"{text_list[0]} {text_list[1]}"
        activities = [
            activity.string for activity in soup_page.select("#park .row ul li")
        ]
        parks.append(
            dict(
                name=name,
                address=address,
                activities=activities,
                url=url,
                images=images,
            )
        )
    except:
        continue

driver.close()

with open("parks.json", "w") as outfile:
    json.dump(parks, outfile)

# mn_state_parks = Table(
#     "mn_state_parks", meta,
#     Column("id", Integer, primary_key=True),
#     Column("name", String, nullable=False),
#     Column("address", String, nullable=False),
#     Column("url", String, nullable=False)
# )
