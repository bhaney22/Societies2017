#Runs 100 of 3 r/t, 2000 timesteps
echo "cd PBS_scripts/WithoutDevDev/3"
for i in {1..100}
do
	echo "Queueing run #$i"

	qsub 3_Industry_nosto.pbs

done