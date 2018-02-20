from utils.apriori import apriori
from utils.db import fetch_db
from utils.format import print_results

amazon =  fetch_db('amazon.db')
kmart =  fetch_db('kmart.db')
shoprite =  fetch_db('shoprite.db')
walmart =  fetch_db('walmart.db')
wawa =  fetch_db('wawa.db')

support = .5
confidence = .5

print_results(
    'Amazon',
    amazon,
    apriori(amazon, support, confidence),
    support,
    confidence
)