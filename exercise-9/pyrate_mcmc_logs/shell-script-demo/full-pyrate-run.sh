#! /bin/bash

# Script to run full pyrate pipeline on Canidae

# navigate to the working directory
cd ~/Desktop/eeb-177/lab-work/exercise-9

# download the data
wget -O canid_occ.csv "https://paleobiodb.org/data1.2/occs/list.csv?base_name=Canidae&show=acconly"

# use the R script we had created to format the data into a pyrate-friendly file
# NOTE!
# if the output files from the R script already exist in the working directory, 
# THIS STEP WILL NOT WORK!
# The existent files are NOT overwritten!
Rscript process_canid_data.R

# Verify that the data formatting worked, and redirect the output into a file called 
# data_summary.txt so that it may be inspected later.
python ~/PyRate/PyRate.py canid_occ_PyRate.py -data_info > data_summary.txt

# And then, run PyRate!
python ~/PyRate/PyRate.py canid_occ_PyRate.py -n 500000
