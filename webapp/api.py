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
    album_name = flask.request.args.get('album_name', 'DEFAULT')
    return json.dumps('HI' + album_name + 'BYE')
    
'''
@api.route('/advsearch/<ranking_lower><ranking_upper><artist><albname><genres><relyear><descs><avrating_lower><avrating_upper><numratings_lower><numratings_upper><numreviews_lower><numreviews_upper>')
def get_advsearch(ranking_lower, ranking_upper, artist, albname, genres, relyear,
                  descs, avrating_lower, avrating_upper, numratings_lower,numratings_upper, 
                  numreviews_lower,numreviews_upper):

    if not ranking_lower:
        ranking_lower == 0
    if ranking_upper:
        ranking_upper == 100000
    if avrating_lower:
        avrating_lower == 0
    if avrating_upper == NULL:
        avrating_upper == 5 
    if numratings_lower == NULL:
        numratings_lower == 0
    if numratings_upper == NULL:
        numratings_upper == 1000000
    
    artist = artist.upper()
    albname = albname.upper()
    genres = genres.upper()
    relyear = relyear.upper()
    descs = descs.upper()
     
    query = '' 'SELECT albums.id, artists.name, albums.name,
                      genres, date, albums.descs, avrating,
                       numratings, numreviews
               FROM albums, artists, reldates, connector
               WHERE albums.id >= 0
               AND albums.id <= 100
               AND UPPER(artists.name) LIKE '%' + %s + '%'
               AND UPPER(albums.name) LIKE '%' + %s + '%'
               AND UPPER(albums.genres) LIKE '%' + %s + '%'
               AND reldates.date LIKE '%' + %s + '%'
               AND UPPER(albums.descs) LIKE '%' + %s + '%'
               AND albums.avrating >= %s
               AND albums.avrating <= %s
               AND albums.numratings >= %s
               AND albums.numratings <= %s
               AND albums.numreviews >= %s
               AND albums.numreviews <= %s
               AND connector.reldate_id = reldates.id
               AND connector.album_id = albums.id
               AND connector.artist_id = artists.id;'' '

    connection, cursor = setup_db()
    cursor.execute(query, (ranking_lower, ranking_upper, artist, albname, genres,
                          str(relyear), descs,
                          avrating_lower, avrating_upper, numratings_lower,
                          numratings_upper, numreviews_lower, numreviews_upper))
    
    advsearch = {}
    for row in cursor:
         advsearch = {'ranking': row[0], 'artist': row[1], 'name': row[2], 'genres':row[3],
                 'date': row[4], 'descs': row[5], 'avrating': row[6], 'numratings': row[7],'numreviews':row[8]}

    cursor.close()
    connection.close()
    return json.dumps(advsearch)
'''
