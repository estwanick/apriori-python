from utils.apriori import apriori
from utils.db import fetch_db

amazon =  fetch_db('amazon.db')
kmart =  fetch_db('kmart.db')
shoprite =  fetch_db('shoprite.db')
walmart =  fetch_db('walmart.db')
wawa =  fetch_db('wawa.db')

results = apriori(amazon)