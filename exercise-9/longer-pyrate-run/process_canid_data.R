source("~/PyRate/pyrate_utilities.r")

# we need to give the utilities a list of extant species
extant_dogs = c("Canis rufus","Canis lupus","Canis aureus","Canis latrans","Canis mesomelas","Canis anthus","Pseudalopex gymnocercus","Canis adustus","Canis familiaris")

# use the extract.ages.pbdb() function in pyrate_utilities to reformat our dataset...
extract.ages.pbdb(file= "canid_occ.csv",extant_species=extant_dogs)

# you should see the following output:

# "This function is currently being tested - caution with the results!"
# replicate 1
# PyRate input file was saved in:  ./canid_occ_PyRate.py 


# TO DO:
# save the file as "process_canid_data.R" in exercise-9

# quit rstudio


