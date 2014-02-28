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
heat = {}
for line in f.readlines():
    line = line.replace("\n","")
    tokens = line.split()
    selected = int(tokens[0])
    disparity = float(tokens[1])
    if selected not in heat:
        heat[selected] = 0
    if disparity > heat[selected] and disparity < 10000:
        heat[selected] = disparity

output = open("disparity_heatmap.dat", "w")
for i in range(1, len(heat)):
    output.write("("+str(i)+","+str(heat[i])+")")
output.close()
