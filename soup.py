from bs4 import BeautifulSoup
from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager


parks_url = "https://www.dnr.state.mn.us/parkfinder/index.html"

driver = webdriver.Chrome(ChromeDriverManager().install())

driver.get(parks_url)

html = driver.page_source

soup = BeautifulSoup(html, "html5lib")
