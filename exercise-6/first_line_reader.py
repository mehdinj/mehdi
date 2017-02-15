import sys
file_to_read = sys.argv[1]
in_file = open(file_to_read)

print("The first line of the file " + file_to_read + " is \n" + in_file.readline())
in_file.close()
