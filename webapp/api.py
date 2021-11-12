'''api.py'''

'''Authors: A.J. Ristino & Julian Bowers'''

'''A Flask blueprint to contain routes that serve API endpoints'''

import random
import flask
import json
import psycopg2
from config import database, user, password

api = flask.Blueprint('api', __name__)

def setup_db():
    try:
        db = psycopg2.connect(
            database=database, user=user, password=password)
        cursor = connection.cursor()
    except Exception as e:
        print(e)
        exit()
    return db, cursor

@api.route('/album/')
def get_random_album():
    rand_int = random.randint(0, 5000)
    query = '''SELECT artists.name, albums.name, genres, descs,
               avrating, numratings, numreviews
               FROM connector, albums, artists
               WHERE albums.id = %s
               AND connector.album_id = albums.id
               AND connector.artist_id = artists.id;
               '''
    connection, cursor = setup_db()
    cursor.execute(query, (str(rand_int),))
    album = {}
    for row in cursor:
        album = {'artist': row[0], 'name': row[1], 'genres':row[3],
                 'descs': row[4], 'avrating': row[5], 'numratings': row[6],
                 'numreviews': row[7]}
    cursor.close()
    connection.close()
    return json.dumps(album)    
