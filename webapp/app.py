'''app.py'''

'''Modified by A.J. Ristino & Julian Bowers'''

'''Adapted from code originally by Professor Jeff Ondich'''

'''A Flask app containing routes that serve our HTML pages'''

import flask
import argparse
import api

app = flask.Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')

@app.route('/')
def index():
    return flask.render_template('index.html')

'''
Below is the old index file containing all of the .html page links. A tad redundant.
'''

@app.route('/index2')
def other_index():
    return flask.render_template('index2.html')

@app.route('/mockup_home')
def home():
    return flask.render_template('mockup_home.html')

@app.route('/index2')
def index2():
    return flask.render_template('index2.html')

@app.route('/mockup_advsearch')
def advsearch():
    return flask.render_template('mockup_advsearch.html')

@app.route('/mockup_about.html')
def about():
    return flask.render_template('mockup_about.html')

if __name__ == '__main__':
    parser = argparse.ArgumentParser('Scaffolding for our albums app, including API & DB')
    parser.add_argument('host', help='the host to run on')
    parser.add_argument('port', type=int, help='the port to listen on')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
