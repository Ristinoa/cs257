"convert.py"

# Author: A.J. Ristino

import csv

with open("athlete_events.csv") as csv_file:
    file = csv.reader(csv_file)
    targets_found = set()
    desired_rows = []
    for line in file:
        if line[8] not in targets_found and line[1] not in targets_found:#If the desired quality  isn't in the 'found' list . . .
            desired_rows.append([line[0],line[8],line[9],line[10]])#Add desired fields to 'desired' list . . .
            #Add the target quality into the 'found' list . . .
            targets_found.add(line[8])
            targets_found.add(line[1])
# and then paste in to the new file
with open("games.csv", 'w') as new_file:
    writer = csv.writer(new_file)
    for row in desired_rows:
        writer.writerow(row)
