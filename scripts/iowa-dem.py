import json
datafile = '../data/iowa-dem.json'

with open(datafile) as f:
	data = json.load(f)

candidateVotes = {}
for countyCode in data['data']:
	county = data['data'][countyCode]
	if county['county'] == 'Iowa':
		continue # Don't count the aggregate
	else:
		for cand in county['Cand']:
			votes = cand['votes']
			name = cand['name']
			if name in candidateVotes:
				candidateVotes[name] = candidateVotes[name] + votes
			else:
				candidateVotes[name] = votes

print candidateVotes
