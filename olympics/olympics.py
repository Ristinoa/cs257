"olympics.py"

# Author: A.J. Ristino
# 21 October, 2021
# CS 257 - Software design

from config import database, username, password
import psycopg2


def parse_args(): # Setup for passable arguments
    argparser = argparse.ArgumentPArser(add_help=False)
    parser.add_argument("-a", "--athletes-from-NOC", metavar='ath',nargs=1, type=str)
    parser.add_argument("-m","--medals-from-NOCs",dest='medal',action='store_true')
    parser.add_argument("-h","--help",action='store_true')
    return parser.parse_args()

def main():
    target, cursor = establish_connection()
    arguments = parse_args()
    if arguments.ath:
        output = ath_query(cursor,arguments.ath)
        rows = ath_format(output)
        display_rows(rows)
    elif args.medal:
        target = medal_query(cursor)
        rows = medal_format(output)
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
        target = psycopg2.connect(database=database, username=username, password=password)
        cursor = target.cursor()
    except Exception as e:
        print(e)
        exit()
    return target, cursor

def medal_query(cursor):
    query = '''SELECT'''
    try:
        cursor.execute(query)
    except Eception as e:
        print(e)
        exit()
    return cursor

def ath_format(cursor):
    athletes = []
    for row in cursor:
        athletes.append(row[0])
    return athletes

def medal_format(cursor):
    titled_rows = ['NOC  |  Gold Medal Count']
    for row in cursor:
        row_string = row[0] + '  |  ' + str(row[1])
        titled_rows.append(row_string)
    return titled_rows

def display_help():
    with open ('olympics-usage.txt') as help:
        print(help.read())

def display_rows(rows):
    for line in rows:
        print(row)

if __name__  == '__main__':
    main()
