# Take a file containing a single column of data and print it to STDOUT 
# in a format readable by PGFPlots.
#
# For example, the file;
# 5
# 4
# 3
# 2
# 1
# 
# Would be output as;
# (1,5)(2,4)(3,3)(4,2)(5,1)

f = open("data.txt", "r")
tuples = ""
for line in f.readlines():
    line = line.replace("\n","")
    tokens = line.split()
    tuples += "("+str(tokens[0])+","+str(tokens[1])+")"
print tuples
