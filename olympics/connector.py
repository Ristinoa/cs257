"connector.py"

import csv

with open("athletes.csv") as athletes:
    athletes_dict = {} # Using dictionary to match key:value pairs
    file = csv.reader(athletes)
    for line in file:
        if line[1] not in athletes_dict.keys():
            athletes_dict[line[1]] = line[0]

with open("nocs_teams.csv") as nocs:
    nocs_dict = {} # Using dictionary to match key:value pairs
    file = csv.reader(nocs)
    for line in file:
        if line[1] not in nocs_dict.keys():
            nocs_dict[line[2]] = line[0]

with open("medals.csv") as medals:
    medals_dict = {}
    file = csv.reader(medals)
    for line in file:
        if line[1] not in medals_dict.keys():
            medals_dict[line[1]] = line[0]

with open("sports_events.csv") as sports:
    sports_dict = {}
    file = csv.reader(sports)
    for line in file:
        if line[1] not in sports_dict.keys():
            sports_dict[line[1]] = line[0]

with open("games.csv") as games:
    games_dict = {}
    file = csv.reader(games)
    for line in file:
        if line[1] not in games_dict.keys():
            games_dict[line[1]] = line[0]

with open("athlete_events.csv") as source, open("connector.csv", 'w') as connector:
    writer = csv.writer(connector)
    reader = csv.reader(source)
    for line in reader:
        if line[0] == 'ID':
            continue
        athlete_id = athletes_dict[line[1]]
        teams_id = nocs_dict[line[7]]
        games_id = games_dict[line[8]]
        event_id = sports_dict[line[13]]
        medals_id = medals_dict[line[14]]
        writer.writerow([athlete_id, teams_id, games_id, event_id, medals_id])


