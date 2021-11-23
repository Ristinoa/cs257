'api.py'''

'''Author: A.J. Ristino'''

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


@api.route('/help/')
def help():
    return '''REQUEST: /album/
    GET parameters: none, album is selected completely at random -- endpoint exists solely to return a random album
    EXAMPLE: /album/
    RESPONSE: 2434 Steve Reid featuring The Legendary Master Brotherhood | Nova | Spiritual Jazz, Soul Jazz, Avant-Garde Jazz |
    energetic, instrumental, rhythmic, anxious, improvisation, passionate | 3.77 | 627 | 7

    REQUEST: /advsearch?ranking_lower=<>&ranking_upper=<>&artist_name=<>&album_name=<>&genres=<>&release_year=<>&descs=<>
             &avrating_lower=<>&avrating_upper=<>&numrating_lower=<>&numrating_upper=<>&numreview_lower=<>&numreview_upper=<>/
    GET parameters: -- endpoint returns a set of albums matching user specifications
        ranking_lower -- user specified lower limit to album ranking
        ranking_upper -- user specified upper limit to album ranking
        artist_name -- either a fragment of or a complete artist's name
        album_name -- either a fragment of or a complete album's name
        genres -- either a fragment of or a complete genre
        release_year -- either a complete or fragmented release year
        descs -- either a fragment of or a complete descriptor
        avrating_lower -- user specified lower limit to average rating
        avrating_upper -- user specified upper limit to average rating
        numrating_lower -- user specified lower limit to number of ratings
        numrating_upper -- user specified upper limit to number of ratings
        numreviews_lower -- user specified lower limit to number of reviews
        numreviews_upper -- user specified lower limit to number of reviews

    EXAMPLE:
        http://localhost:5000/api/advsearch?ranking_lower=&ranking_upper=&artist_name=kendrick&album_name=&genres=hip&release_year=&descs=&        avrating_lower=&avrating_upper=&numrating_lower=&numrating_upper=&numreview_lower=&numreview_upper=

    RESULT:
         ["Ranking: 5 -:- Artist: Kendrick Lamar -:- Album name: To Pimp a Butterfly -:- Genres: Conscious Hip Hop, West Coast Hip Hop, Jazz Rap -:- Release date: 15 March 2015 -:- Descriptors: political, conscious, poetic, protest, concept album, introspective, urban, male vocals, eclectic, passionate -:- Average Rating: -:- 4.27 -:- Number of Ratings: 44206 -:- Number of Reviews: 379", "Ranking: 17 -:- Artist: Kendrick Lamar -:- Album name: good kid, m.A.A.d city -:- Genres: West Coast Hip Hop, Conscious Hip Hop -:- Release date: 22 October 2012 -:- Descriptors: urban, crime, concept album, conscious, introspective, male vocals, passionate, existential, violence, bittersweet -:- Average Rating: -:- 4.2 -:- Number of Ratings: 38939 -:- Number of Reviews: 315", "Ranking: 2616 -:- Artist: Kendrick Lamar -:- Album name: Untitled Unmastered. -:- Genres: Jazz Rap, Conscious Hip Hop, West Coast Hip Hop -:- Release date: 4 March 2016 -:- Descriptors: political, passionate, anxious, conscious, male vocals, eclectic, urban, abstract, nocturnal, atmospheric -:- Average Rating: -:- 3.64 -:- Number of Ratings: 19346 -:- Number of Reviews: 97", "Ranking: 3514 -:- Artist: Kendrick Lamar -:- Album name: Section.80 -:- Genres: West Coast Hip Hop, Conscious Hip Hop -:- Release date: 2 July 2011 -:- Descriptors: conscious, urban, political, rhythmic, male vocals, concept album, mellow, drugs, introspective, Christian -:- Average Rating: -:- 3.62 -:- Number of Ratings: 18446 -:- Number of Reviews: 93", "Ranking: 4422 -:- Artist: Kendrick Lamar -:- Album name: Damn. -:- Genres: West Coast Hip Hop, Conscious Hip Hop -:- Release date: 14 April 2017 -:- Descriptors: introspective, conscious, male vocals, rhythmic, death, urban, sampling, passionate, existential, serious -:- Average Rating: -:- 3.52 -:- Number of Ratings: 30228 -:- Number of Reviews: 235"] '''


''' First endpoint:
        Not overly complex, just grabs a random number and plugs it into the connector, albums & artists table
'''

@api.route('/album/')
def get_random_album():
    rand_int = random.randint(0, 4999)
    query = '''SELECT albums.id, artists.name, albums.name, genres, descs,
               avrating, numratings, numreviews
               FROM connector, albums, artists
               WHERE albums.id = %s
               AND connector.album_id = albums.id
               AND connector.artist_id = artists.id;
               '''
    connection, cursor = setup_db()
    cursor.execute(query, (str(rand_int),))
    print(cursor.execute(query, (str(rand_int),)))
    album = {}
    for row in cursor:
        album = {'ranking': row[0], 'artist': row[1], 'name': row[2], 'genres':row[3],
                 'descs': row[4], 'avrating': row[5], 'numratings': row[6],'numreviews':row[7]}

    cursor.close()
    connection.close()
    return json.dumps(album)

'''Second endpoint:
        This is not as complex as it looks. Conceptually, it's pretty simple; grab the right values
        from the corresponding js objects, process the inputs, add them into the query as wildcards'''

@api.route('/advsearch')
def get_advsearch():
    # using .get to obtain the correct values and turn them into varaibles
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
    
    # processing certain variables into inputs
    artist_name = artist_name.upper()
    album_name = album_name.upper()
    genres = genres.upper()
    release_year = release_year.upper()
    descs = descs.upper()
    
    # adding variables together into a set of inputes the SQL query will accept
    query_parameters = (str(ranking_lower),str(ranking_upper), artist_name, album_name,  genres,
                        str(release_year), descs, str(avrating_lower),str(avrating_upper),
                        str(numrating_lower), str(numrating_upper),str(numreview_lower),str(numreview_upper))
    
    # the aforementioned query
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

    # cursor stuff
    connection, cursor = setup_db()
    cursor.execute(query,(query_parameters),)
    
    # Read through the cursor to construct the list of strings that will be our results
    advsearch = []
    i = 0
    for row in cursor:
    
        album = 'Ranking:' + ' ' +  str(row[0]) +' ' +  '-:-' + ' '  +'Artist:' + ' ' +  str(row[1]) + ' ' +  '-:-' + ' ' + 'Album name:'+ ' ' +  str(row[2]) + ' ' +  '-:-' +  ' ' +  'Genres:' + ' ' +  str(row[3]) + ' ' +  '-:-' + ' ' +  'Release date:' + ' ' + str(row[4]) + ' ' + '-:-' + ' ' + 'Descriptors:' + ' ' +  str(row[5]) + ' ' + '-:-' + ' ' + 'Average Rating:' + ' ' + '-:-' + ' ' +  str(row[6]) +' ' +  '-:-' + ' ' + 'Number of Ratings:' + ' ' + str(row[7]) + ' ' +  '-:-' + ' ' +  'Number of Reviews:'+ ' '+  str(row[8])


        '''     
        album = {}
        album = {'Ranking': row[0], 'artist': row[1], 'name': row[2], 'genres':row[3],
                 'date': row[4], 'descs': row[5], 'avrating': row[6], 'numratings': row[7],'numreviews':row[8]}
        '''
        advsearch.append(album)
    
    # return the finished list!
    cursor.close()
    connection.close()
    return json.dumps(advsearch)
