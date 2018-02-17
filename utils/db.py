import sqlite3
from sqlite3 import Error
import os

def create_connection(db_file):
    try:
        conn = sqlite3.connect(db_file)
        return conn
    except Error as e:
        return e

    return None

def fetch_db(db_name):
    database = os.getcwd() + '/db/' + db_name
    conn = create_connection(database)

    with conn:
        cur = conn.cursor()
        cur.execute('select * from Transactions order by id')
        rows = cur.fetchall()
        formatted_orders = {}

        for row in rows:
            order_id = row[0]
            item_id = row[1]
            if order_id in formatted_orders:
                formatted_orders[order_id].append(item_id)
            else:
                formatted_orders[order_id] = []
                formatted_orders[order_id].append(item_id)

        return formatted_orders

        