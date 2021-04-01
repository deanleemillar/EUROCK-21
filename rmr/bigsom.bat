@echo on
rem Batch file for RMR SOM initialisation training & testing
rem
rem D.L. Millar
rem
rem Program uses commands from the SOM_PAK package
rem available via ftp from ftp://cochlea.hut.fi and
rem anonymous login with email address as password
rem
rem	Initialise codebook vectors
rem
rem..\som\progs\randinit -din data\big.dat -cout som\big_001.cod -xdim 100 -ydim 100 -topol hexa -neigh bubble -rand 1 -v 5
rem
rem	Rough Training - 1 time through the input data file
rem
rem..\som\progs\vsom -din data\big.dat -cin som\big_001.cod -cout som\big_001.cod -rlen 2285568 -alpha 0.05 -radius 80 -v 5
rem
rem	Fine tuning - 10 times through the input data file
rem
rem..\som\progs\vsom -din data\big.dat -cin som\big_001.cod -cout som\big_001.cod -rlen 22855680 -alpha 0.02 -radius 5 -v 5
rem
rem	Test Error
rem
..\som\progs\qerror -din data\big.dat -cin som\big_001.cod -v 5
rem
rem	Calibration
rem
..\som\progs\vcal -din data\big.dat -cin som\big_001.cod -cout som\big_001_cal.cod -v 5
