
# coding: utf-8

# In[ ]:

# Fist of all I have used the following shell command to replace 
# the pattern "comma, then a space" (,\s) with just a space ().
# command : sed 's/,\s/ /g' formatted.ebird.csv formatted.ebird1.csv

# This script first opens and reads the eBird data file
# It then goes through a loop for every line of the document and appends the "Family" column to a list
# It uses the counter function to create a dictionary of Families and how many times they were repeated
# It finally prints out the key, value pair in a statement using the dictionary created by Counter function.
import csv
import sys

my_dict={}
i=0

file_object=open(sys.argv[1], encoding = "ISO-8859-1")
reader = csv.reader(file_object)

next(reader, None)
next(reader, None)
next(reader, None)


for row in reader:
    
    my_dict[row[3]]=row[7]
         
for keys, values in my_dict.items():
         print(keys+" belongs to Family "+values)
     



file_object.close()



