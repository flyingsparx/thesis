# Take a file containing a single column of data representing the timeline
# selection heatmaps for plotting by PGFPlots. 


f = open("workfile.dat", "r")
s = ""
counter = 0
for line in f.readlines():
    counter += 1
    for i in range(0,20):
        s = s + str(i)+" "+str(counter)+" "+str(line.replace("\n",""))+"\n"
    s = s + "\n"

nf = open("heatmap2.dat", "w")
nf.write(s)
