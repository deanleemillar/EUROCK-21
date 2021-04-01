rem Batch file for RMR SOM initialisation training & testing
rem
rem D.L. Millar
rem
rem Program uses commands from the SOM_PAK package
rem available via ftp from ftp://cochlea.hut.fi and
rem anonymous login with email address as password
rem
rem	Evenly sample 52489 codebook vectors from the big training data file
rem	to form a small training data file
rem
rem..\lvq\progs\eveninit -noc 52489 -din data\big.dat -cout data\smaleven.dat -knn 5
rem
rem	Initialise codebook vectors
rem
rem..\som\progs\randinit -din data\smaleven.dat -cout som\small.cod -xdim 50 -ydim 50 -topol hexa -neigh bubble -rand 2 -v 5
rem
rem	Rough Training - 4 times through the input data file
rem
rem..\som\progs\vsom -din data\smaleven.dat -cin som\small.cod -cout som\small.cod -rlen 208000 -alpha 0.05 -radius 40 -v 5
rem
rem	Fine tuning - 40 times through the input data file
rem
rem..\som\progs\vsom -din data\smaleven.dat -cin som\small.cod -cout som\small.cod -rlen 2080000 -alpha 0.02 -radius 3 -v 5
rem
rem	Test Error
rem
rem..\som\progs\qerror -din data\big.dat -cin som\small.cod -v 5
rem
rem	Calibration
rem
..\som\progs\vcal -din data\big.dat -cin som\small.cod -cout som\small.cod -v 5
