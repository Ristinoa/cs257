'api.py'''

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
        cursor = db.cursor()
    except Exception as e:
        print(e)
        exit()
    return db, cursor

@api.route('/album/')
def get_random_album():
    rand_int = random.randint(0, 5000)
    query = '''SELECT albums.id, artists.name, albums.name, genres, descs,
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
        album = {'ranking': row[0], 'artist': row[1], 'name': row[2], 'genres':row[3],
                 'descs': row[4], 'avrating': row[5], 'numratings': row[6],'numreviews':row[7]}
    cursor.close()
    connection.close()
    return json.dumps(album)

@api.route('/advsearch')
def get_advsearch():
    ranking_lower = flask.request.args.get('ranking_lower', default=0, type=int)
    ranking_upper = flask.request.args.get('ranking_upper',default=5000, type=int)
    artist_name = flask.request.args.get('artist_name', default='', type=str)
    album_name = flask.request.args.get('album_name', default='', type=str)
    genres = flask.request.args.get('genres', default='', type=str)
    release_year = flask.request.args.get('release_year', default='', type=str)
    descs = flask.request.args.get('descs', default='', type=str)
    avrating_lower = flask.request.args.get('avrating_lower', default=0, type=int)
    avrating_upper = flask.request.args.get('avrating_upper', default=5, type=int)
    numrating_lower = flask.request.args.get('numrating_lower', default=0, type=int) 
    numrating_upper = flask.request.args.get('numrating_upper', default=1000000, type=int)
    numreview_lower = flask.request.args.get('numreview_lower', default=0, type=int)
    numreview_upper = flask.request.args.get('numreview_upper', default=1000000, type=int)
    
    artist_name = artist_name.upper()
    album_name = album_name.upper()
    genres = genres.upper()
    release_year = release_year.upper()
    descs = descs.upper()
    
    print('hello!')
    print(ranking_lower)
    print(ranking_upper)
    print(artist_name)
    print(album_name)
    print(genres)
    print(release_year)
    print(descs)
    print(avrating_lower)
    print(avrating_upper)
    print(numrating_lower)
    print(numrating_upper)
    print(numreview_lower)
    print(numreview_upper)


    query = '''SELECT albums.id, artists.name, albums.name,
                      genres, date, albums.descs, avrating,
                       numratings, numreviews
               FROM albums, artists, reldates, connector
               WHERE albums.id >= %s
               AND albums.id <= %s
               AND UPPER(artists.name) LIKE CONCAT('%%',%s,'%%')
               AND UPPER(albums.name) LIKE CONCAT('%%',%s,'%%')
               AND UPPER(albums.genres) LIKE CONCAT('%%',%s,'%%')
               AND reldates.date LIKE CONCAT('%%',%s,'%%')
               AND UPPER(albums.descs) LIKE CONCAT('%%',%s,'%%')
               AND albums.avrating >= %s
               AND albums.avrating <= %s
               AND albums.numratings >= %s
               AND albums.numratings <= %s
               AND albums.numreviews >= %s
               AND albums.numreviews <= %s
               AND connector.reldate_id = reldates.id
               AND connector.album_id = albums.id
               AND connector.artist_id = artists.id;'''

    connection, cursor = setup_db()
    cursor.execute(query, (ranking_lower, ranking_upper, artist_name, album_name,
                           genres,release_year, descs, avrating_lower, avrating_upper,
                           numrating_lower, numrating_upper, numreview_lower, numreview_upper))
    print(cursor.query)
    advsearch = []
    for row in cursor:
         album ={}
         album = {'ranking': row[0], 'artist': row[1], 'name': row[2], 'genres':row[3],
                 'date': row[4], 'descs': row[5], 'avrating': row[6], 'numratings': row[7],'numreviews':row[8]}
         advsearch.add(album)

    cursor.close()
    connection.close()
    return json.dumps(advsearch)
