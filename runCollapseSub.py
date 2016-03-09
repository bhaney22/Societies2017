import os, datetime



#multiply rounds (line 6) by number of cores in master shell file to get number of runs per variable.
rounds = 1
TechParameter = ["none","tool","machine","factory","Industry"]
#DeviceComponent is always 1+ToolComponent, specified in conf files
ToolComponent= [1,5,7]


for T in ToolComponent:
	for tech in TechParameter:
		for round in range(rounds):
			os.system("./societies -v 1 -s Collapse/Day5test/" + " -r 8 600 0" + " -p Collapse/Collapse" +str(T)+"_" +str(tech)+".conf -z Collapse/agentcsv.csv -t Collapse_R" +str(T)+"_" +str(tech)+ " >> Collapse/Day5test/run_R"+str(T)+"_" +str(tech)+ "log.txt")
	
# + " -r 8 250 0" 		
		
#sweep tool components: [1, 3, 5, 7]
	#step 1: all factors = 0
	#step 2: tool factor = 3
	#step 3: machine factor = 9 & dev_machine = 9
	#step 4: factory = 27 & dev_factory factor = 9
	#step 5: industry = 81
#TechParameter = ["none","tool","machine","factory","Industry"]
#DeviceComponent is always 1+ToolComponent, specified in conf files
#ToolComponent= [1,3,5,7]