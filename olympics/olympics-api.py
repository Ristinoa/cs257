"olympics-api.py"

# Author: A.J. Ristino
# October 28, 2021
# CS257 - Software Design
# Special thanks to Carl Tankersley for answering my annoying network-related questions!

import psycopg2
import argparse
import flask
import json

from config import database, username, password


class DatabaseApp: # Class used for connecting to Olympics + making the corresponding cursor 
    def __init__(self):
       try:
           self.database = psycopg2.connect(database = database,
                                            user = username,
                                            password = password)
           self.cursor = self.database.cursor()
       except Exception as e:
           print(e)
           exit()

olympics_app = DatabaseApp() # assigning a variable to an instance of the DB app for later
f_app = flask.Flask(__name__)

def parse_args(): # The args passed in the unix terminal
    argparser = argparse.ArgumentParser(
        description="Flask API to query my (almost-not-broken) olympics database")
    argparser.add_argument('host', help='the host on which this application is running')
    argparser.add_argument('port', type=int, help='the port at which this aplication is listening')
    args = argparser.parse_args()
    return args

# From here up until I define the main method, it's all endpoint definitions

@f_app.route('/games')
def get_games():

    # Here's my setup:
    # 1. writing the actual query
    # 2. calling the instance of DatabaseApp (olympics_app)
    #     2a. using the cursor initialized in the constructor to execute the query
    # 3. writing the 'games' dictionary by reading through the cursor and creating 
    #    key:value pairs for the attributes I want to return, and then appending them into a list 
    # 4. returning the assembled list
 
    query = 'SELECT * FROM game ORDER BY year' # 1.
    try:
        olympics_app.cursor.execute(query) # 2. + 2a.
    except Exception as e:
        print(e)
        exit()
    games = []
    for game in olympics_app.cursor: # 3.
        game_dict = {}
        game_dict['id'] = game[0]
        game_dict['year'] = game[2]
        game_dict['season'] = game[3]
        game_dict['season'] = game[4]
        games.append(game_dict) 
    return json.dumps(games) # 4.


@f_app.route('/nocs')
def get_nocs():
    
    # /nocs follows the same setup + flow as get_games
    # Minor hiccup: I actually made my NOCs out of the athletes_events table!
    # ^ This wasn't the smartest move in retrospect and I know it doesn't actually return
    # ^ the EXACT input the assignment calls for, but I lack the time to go back and restructure
    # ^ my database thoroughly enough to include this. My apologies!
 
    query = 'SELECT * FROM noc ORDER BY noc_name'
    try:
        olympics_app.cursor.execute(query)
    except Exception as e: 
        print(e)
        exit()
    nocs = []
    for noc in olympics_app.cursor: 
        noc_dict ={}
        noc_dict['abrev'] = noc[2]
        noc_dict['team'] = noc[1]
        nocs.append(noc_dict)
    return json.dumps(nocs)

@f_app.route('/medalists/<noc>')
def get_medalists(noc):

    # /medalists follows the same setup + flow as the previous two endpoints
    # LARGE HICCUP: My database is perfectly functional except for the connection between the 'game'
    # ^ table and the 'connector' table. For some reason, I have this issue that, when writing the 
    # ^ connector.csv, it'll start randomly adding ID values not found in the games.csv file. I've tried
    # ^ figuring it out multiple times but the issue persists.
    # SOLUTION: Instead, please enjoy a medalists endpoint by NOC ID! This table actually works with my connector
    # ^ I do lack a sport table though, so it'll only spit out events and not sports, sadly.
    # ^ This does work out though, as the event field is redundant and includes the sport within it!

    query = '''SELECT athletes.athlete_id, athletes.athlete_name, athletes.sex, sport.event,medal.medal_type, noc.noc_name, noc.team_name
               FROM athletes, medal, connector, noc, sport
               WHERE noc.noc_id = %s
               AND connector.athlete_id = athletes.athlete_id
               AND connector.sport_id = sport.sport_id
               AND medal.medal_id = medal.medal_id
               AND connector.noc_id = noc.noc_id
               AND medal.medal_id <> 1'''
    try:
        olympics_app.cursor.execute(query, (noc))
    except Exception as e:
        print(e)
        exit()
    medalists = []
    for medalist in olympics_app.cursor:
        medalist_dict = {}
        medalist_dict['name'] = medalist[1]
        medalist_dict['sex'] = medalist[2]
        medalist_dict['sport/event'] = medalist[3]
        medalist_dict['medal'] = medalist[4]
        medalist_dict['NOC'] = medalist[5]
        medalist_dict['team'] = medalist[6]
        medalists.append(medalist_dict)
    return json.dumps(medalists)

def main():
    args = parse_args()
    f_app.run(host=args.host, port=args.port, debug=True)

if __name__ == '__main__':
    main()   
