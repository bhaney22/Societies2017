for i in {1..30}
do
	echo "Queueing run #$i"
	qsub 5_Industry.pbs
	qsub 5_Industry_REM.pbs
done
