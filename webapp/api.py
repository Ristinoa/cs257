'''api.py'''

'''Authors: A.J. Ristino & Julian Bowers'''

'''A Flask blueprint to contain routes that serve API endpoints'''

import flask
import json
import psycopg2
from config import database, user, password

api = flask.Blueprint('api', __name__)

def setup_db_connection():
    try:
       db = psycopg2.connect(dtabase=database, user=username, password=password)
       cursor = target.cursor()
    except Exception as e:
       print(e)
       exit()
    return db, cursor

def main():
    args = parse_args()


@api.route('/artists/')
def get_authors():
    query = '''SELECT id, name FROM artists ORDER BY id'''
    try:
        db.cursor.execute(query)
    except Exception as e:
        print(e) 
        exit()   
    artists = []
    for artist in db.cursor:
        artist_dict = {}
        artist_dict['id'] = artist[0]
        artist_dict['name'] = artist[1]
        artists.append(artist_dict)
    cursor.close()
    connection.close()
    return json.dumps(artists)

@api.route('/albums/artist/<artist_id>')
def get_albums_for_artist(artist_id):
    query = '''SELECT albums.id, artists.name, albums.name
               FROM connector, albums, artists
               WHERE artists.id = %s
               AND connector.artist_id = artists.id
               AND connector.album_id = albums.id
               ORDER BY artists.name;'''
    try:
        db.cursor.execute(query, (noc))
    except Exception as e:
        print(e)
        exit()
    albums = []
    for album in db.cursor:
        album_dict = {}
        album_dict['id'] = album[0]
        album_dict['artist'] = album[1]
        album_dict['album'] = album[2] 
        albums.append(album_dict)
    cursor.close()
    connection.close()
    return json.dumps(albums)

    
