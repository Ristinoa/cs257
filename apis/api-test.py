#!/usr/bin/env python3
'''
    api-test.py
    Jeff Ondich, 11 April 2016
    Updated 7 October 2020

    An example for CS 257 Software Design. How to retrieve results
    from an HTTP-based API, parse the results (JSON in this case),
    and manage the potential errors.
'''

import sys
import argparse
import json
import urllib.request


def parse_args(): #Setup for singular arg that I can pass in?
    args = argparse.ArgumentParser(add_help=False)
    args.add_argument("-s","--states-death-counts", metavar='state', dest='state', nargs=1, type=str)
    args.add_argument("-h","--help",action='store_true')
    return args.parse_args()

def print_state_death_counts(state):
    url = f'https://api.covidtracking.com/v1/states/{state}/daily.json'
    data_from_server = urllib.request.urlopen(url).read()
    string_from_server = data_from_server.decode('utf-8')
    covid_day_list = json.loads(string_from_server)
    
    for covid_day in covid_day_list:
        print(covid_day['date'], covid_day['deathIncrease'])

def display_help():
    with open ('apitest-usage.txt') as help:
        print(help.read())

def main(): #How do I connect inputs into my parsed args?
    arguments = parse_args()
    if arguments.state:
        s = arguments.state[0]
        print_state_death_counts(s) #presumably this lets me print the wildcard entry?
    else:
        display_help()

if __name__ == '__main__':
    main()
