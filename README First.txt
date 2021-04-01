These files and folders were prepared to support the Case Study lecture on the topic of Cluster Discovery and Visualisation for the Bharti School of Engineering Mine Digitalisation course.

To generate file big.dat, open the file .\rmr\GenerateStateVectors.xls and press the button. File size should be about 35MB

Within the folder structure there are programs implementing both Learning Vector Quantisation (.\lvq) and Self-Organsising Maps (.\som). These programs were developed by Kohonen and his team at the University of Helsinki in 1992. The programs were used in the PhD work of Dean Millar, which has been drawn upon to provide the case study.

Folder .\rmr contains some scripts that are designed to be run from the windows command prompt, or the window Powershell prompt. To activate a command prompt or a Powershell prompt, hold down the <shift> key and right click with your mouse in folder .\rmr  Then type in one of the names of the three batch files and press return. The scripts will automatically execute. You can use the scripts as a basis for running your own LVQ / SOM / Sammon Map procedures.

biglvq.bat - runs a script that produces a series of 'codebook' datasets that quantise the vector space of Bieniawski's Rock Mass Rating (RMR) system drawing upon a data file called .\rmr\data\big.dat. The script will place the resulting codebook datasets in the folder .\rmr\lvq

bigsom.bat - runs a script that produces a single set of node associated vectors of a 100 x 100 hexagonal self-organising map that quantises the vector space of Bieniawski's RMR system, drawing upon data file .\rmr\data\big.dat to train the SOM

smallsom.bat - same as bigsom, but a 50 x 50 hexagonal SOM and trained with a smaller dataset, abstracted from .\rmr\data\big.dat with even initialisation between the RMR classes.

big.dat is created using a VBA program that is present within file GenerateStateVectors.xls. If you want to reproduce big.dat, just press the button on the worksheet in the XL file. To see the VBA code, use the key combination <Alt> + <F11>

Once the LVQ codebook or the SOM is created, deployment comprises forming a vector with which to query the LVQ codebook or SOM. The Excel workbooks contained within folder ..\visualisation contain the live deployments illustrated in the case study lecture notes. BigLVQResults.xls uses the LVQ3 codebook produced when running biglvq.dat, SmallSOMResults.xls uses the SOM produced by smallsom.bat, BigSOMResults.xls uses the SOM produced by bigsom.bat and Slope SOM illustrates the deployment of a SOM for rock slope stability wherein the data, nor the scripts to produce the trained SOM are provided as part of this distribution.

Dean Millar, 16 July 2020