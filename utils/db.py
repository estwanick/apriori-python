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
        orders = cur.fetchall()
        cur.execute('select * from Items order by id')
        items = cur.fetchall()
        formatted_orders = []
        previous_order = None
        for order in orders:
            order_id = order[0]
            item_id = order[1]
            item_text = items[item_id][1].encode("ascii")
            if order_id is not None and previous_order == order_id:
                formatted_orders[order_id].append(item_text)
            else:
                formatted_orders.append([])
                formatted_orders[order_id].append(item_text)
                previous_order = order_id

        return formatted_orders

        