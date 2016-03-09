import os, datetime


parameters = [0,5,10]
rounds=3


for p in parameters:
	for round in range(rounds):
		os.system("./societies -v 1 -s Collapse/trmem/" + " -p Collapse/trmem" +str(p)+ ".conf -z Collapse/agentcsv" +str(p)+ ".csv -t Standard_R" +str(round)+"_" +str(p)+ " -r 8 250 0" + " >> Collapse/trmem/runlogr.txt &")
