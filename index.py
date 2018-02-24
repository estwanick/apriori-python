from utils.apriori import apriori
from utils.db import fetch_db
from utils.format import print_results
import argparse

parser=argparse.ArgumentParser()

parser.add_argument('--support', help='Support threshold')
parser.add_argument('--confidence', help='Confidence threshold')

amazon =  fetch_db('amazon.db')
kmart =  fetch_db('kmart.db')
shoprite =  fetch_db('shoprite.db')
walmart =  fetch_db('walmart.db')
wawa =  fetch_db('wawa.db')

args=parser.parse_args()

support = float(args.support) if args.support is not None else .5
confidence = float(args.confidence) if args.confidence is not None else .5

print_results(
    'Amazon',
    amazon,
    apriori(amazon, support, confidence),
    support,
    confidence
)

print_results(
    'Kmart',
    kmart,
    apriori(kmart, support, confidence),
    support,
    confidence
)

print_results(
    'Shoprite',
    shoprite,
    apriori(shoprite, support, confidence),
    support,
    confidence
)

print_results(
    'Walmart',
    walmart,
    apriori(walmart, support, confidence),
    support,
    confidence
)

print_results(
    'Wawa',
    wawa,
    apriori(wawa, support, confidence),
    support,
    confidence
)