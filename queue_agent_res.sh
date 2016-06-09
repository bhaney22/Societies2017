#Runs everything. 30 runs each of all 1,3,5,7 r/t , with and without stock, with and without DevDevs. Should be between 6,000 and 9,000 computing hours.

cd PBS_scripts/agentResVariations

for i in {1..5}
do
	echo "Queueing run #$i"
	qsub NoDev_5_12_12_col.pbs
	qsub NoDev_5_12_12_nor.pbs
	qsub NoDev_5_12_24_col.pbs
	qsub NoDev_5_12_24_nor.pbs
	qsub NoDev_5_12_48_col.pbs
	qsub NoDev_5_12_48_nor.pbs
	qsub NoDev_5_24_12_col.pbs
	qsub NoDev_5_24_12_nor.pbs
	qsub NoDev_5_24_24_col.pbs
	qsub NoDev_5_24_24_nor.pbs
	qsub NoDev_5_24_48_col.pbs
	qsub NoDev_5_24_48_nor.pbs
	qsub NoDev_5_48_12_col.pbs
	qsub NoDev_5_48_12_nor.pbs
	qsub NoDev_5_48_24_col.pbs
	qsub NoDev_5_48_24_nor.pbs
	qsub NoDev_5_48_48_col.pbs
	qsub NoDev_5_48_48_nor.pbs
done