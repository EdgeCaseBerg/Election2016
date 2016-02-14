import json
datafile = '../data/nh-county.json'

with open(datafile) as f:
	data = json.load(f)


for party in data['NH']:
	partydata = data['NH'][party]
	print party
	candidateVotes = {}
	for countyCode in partydata['data']:
		county = partydata['data'][countyCode]
		if countyCode == '0':
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
