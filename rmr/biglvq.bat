@echo off
rem Batch file for RMR LVQ initialisation training & testing
rem
rem D.L. Millar
rem
rem Program uses commands from the LVQ_PAK package
rem available via ftp from ftp://cochlea.hut.fi and
rem anonymous login with email address as password
rem
rem	Evenly initialise 10000 codebook vectors
rem
..\lvq\progs\propinit -noc 10000 -din data\big.dat -cout lvq\big.ini -knn 5 > rmr.log
rem
rem	Adjust codebook vectors
rem
..\lvq\progs\balance -din data\big.dat -cin lvq\big.ini -cout lvq\big.bal -knn 5 > rmr.log
rem
rem	Conduct olvq1 training - 5 times through the input data file
rem
..\lvq\progs\olvq1 -din data\big.dat -cin lvq\big.bal -cout lvq\big.olq -rlen 11427840 > rmr.log
rem
rem	Fine tune with lvq3 training - improves sensitivity between classification boundaries
rem
..\lvq\progs\lvq3 -din data\big.dat -cin lvq\big.olq -cout lvq\big.lvq -alpha 0.03 -rlen 11427840 -win 0.3 -epsilon 0.1 > rmr.log
rem
rem	Sammon map each of the interim files - for visualisation
rem
..\lvq\progs\sammon -cin lvq\big.ini -cout sam\bigini.sam -v 5 -rand 1 -rlen 100 > smini.log
..\lvq\progs\sammon -cin lvq\big.bal -cout sam\bigbal.sam -v 5 -rand 1 -rlen 100 > smbal.log
..\lvq\progs\sammon -cin lvq\big.olq -cout sam\bigolvq.sam -v 5 -rand 1 -rlen 100 > smolvq.log
..\lvq\progs\sammon -cin lvq\big.lvq -cout sam\biglvq.sam -v 5 -rand 1 -rlen 100 > smlvq.log