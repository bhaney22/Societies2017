#Hopefully cleans the folders of a failed run...

cd ~/Dahl_Societies_CPP/PBS_scripts/agentResVariations
rm *.pbs.o*
rm *.pbs.e*
cd ~/Dahl_Societies_CPP
rm runlog_5_12*.txt
rm runlog_5_24*.txt
rm runlog_5_48*.txt
cd ~/Dahl_Societies_CPP/ResultsAR/12
rm -r *
cd ~/Dahl_Societies_CPP/ResultsAR/24
rm -r *
cd ~/Dahl_Societies_CPP/ResultsAR/48
rm -r *