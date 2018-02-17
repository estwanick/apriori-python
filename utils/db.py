import sqlite3
from sqlite3 import Error
import os

def create_connection(db_file):
    try:
        conn = sqlite3.connect(db_file)
        return conn
    except Error as e:
        print e

    return None

def fetch_db(db_name):
    database = os.getcwd() + '/db/' + db_name
    conn = create_connection(database)

    with conn:
        cur = conn.cursor()
        cur.execute('select * from Transactions')
        rows = cur.fetchall()
        print rows
        