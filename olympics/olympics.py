"olympics.py"

# Author: A.J. Ristino
# 21 October, 2021
# CS 257 - Software design

from config import database, username, password
import psycopg2
import argparse

def parse_args(): # Setup for passable arguments
    argparser = argparse.ArgumentParser(add_help=False)
    argparser.add_argument("-a","--athletes-from-NOC", metavar='ath',dest='ath', nargs=1, type=str)
    argparser.add_argument("-g","--gold-medals-from-NOCs",dest='gold',action='store_true')
    argparser.add_argument("-h","--help",action='store_true')
    argparser.add_argument("-s","--silver-medals-from-NOCs",dest='silver',action='store_true') # I apologize in advance
    return argparser.parse_args()

def main():
    target, cursor = establish_connection()
    arguments = parse_args()
    if arguments.ath:
        output = ath_query(cursor,arguments.ath)
        rows = ath_format(output)
        display_rows(rows)
    elif arguments.gold:
        output = gold_query(cursor)
        rows = gold_format(output)
        display_rows(rows)
    elif arguments.silver:
        output = silver_query(cursor)
        rows = silver_format(output)
        display_rows(rows)
    else:
        display_help()
    target.close()

def ath_query(cursor, noc):
    query = '''SELECT DISTINCT athletes.athlete_name 
               FROM athletes, noc, connector
               WHERE noc.noc_name = %s
               AND connector.athlete_id = athletes.athlete_id
               AND connector.noc_id  = noc.noc_id
               ORDER BY athletes.athlete_name'''
    try:
        cursor.execute(query, noc)
    except Exception as e:
        print(e)
        exit()
    return cursor 

def establish_connection():
    try:
        target = psycopg2.connect(database=database, user=username, password=password)
        cursor = target.cursor()
    except Exception as e:
        print(e)
        exit()
    return target, cursor

def gold_query(cursor):
    query = '''SELECT noc_name, COUNT(medal_id)
               FROM connector, noc
               WHERE connector.medal_id = 4
               AND connector.noc_id = noc.noc_id
               GROUP BY noc.noc_name, connector.medal_id 
               ORDER BY noc.noc_name;'''
    try:
        cursor.execute(query)
    except Eception as e:
        print(e)
        exit()
    return cursor

def silver_query(cursor):
    query = '''SELECT noc_name, COUNT(medal_id)
               FROM connector, noc
               WHERE connector.medal_id = 20
               AND connector.noc_id = noc.noc_id
               GROUP BY noc.noc_name, connector.medal_id
               ORDER BY noc.noc_name;'''
    try:
        cursor.execute(query)
    except Eception as e:
        print(e)
        exit()
    return cursor

def ath_format(cursor):
    athletes = ''
    for row in cursor:
        ath_row = row[0] + '\n'
        athletes = athletes + ath_row
    return athletes

def gold_format(cursor):
    titled_rows = 'NOC  |  Gold Medal Count \n'
    for row in cursor:
        row_string = row[0] + '  |  ' + str(row[1]) + '\n'
        titled_rows = titled_rows + row_string
    return titled_rows

def silver_format(cursor):
    titled_rows = 'NOC  |  Silver Medal Count \n'
    for row in cursor:
        row_string = row[0] + '  |  ' + str(row[1]) + '\n'
        titled_rows = titled_rows + row_string
    return titled_rows

def display_help():
    with open ('olympics-usage.txt') as help:
        print(help.read())

def display_rows(rows):
        print(rows)

if __name__  == '__main__':
    main()

