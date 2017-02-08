#Runs everything. 30 runs each to find the minimum number of agents needed to run the model.

cd PBS_scripts

for i in {1..30}
do
	echo "Queueing run #$i"
	qsub NoDev_3_4_4_col.pbs
	qsub NoDev_3_4_4_nor.pbs
	qsub NoDev_3_5_5_col.pbs
	qsub NoDev_3_5_5_nor.pbs
	qsub NoDev_3_6_6_col.pbs
	qsub NoDev_3_6_6_nor.pbs
	qsub NoDev_3_7_7_col.pbs
	qsub NoDev_3_7_7_nor.pbs
	qsub NoDev_3_8_8_col.pbs
	qsub NoDev_3_8_8_nor.pbs
done