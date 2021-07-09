import sys
import re
import time

fname1 = sys.argv[1]
f1 = open(fname1, 'r')

fname2 = sys.argv[2]
f2 = open(fname2, 'r')


chisel2verilog = []
for line in f1:
    if not line.strip(): # don't count empty line
        continue

    if 'success' in line:
        words = line.split()
        chisel2verilog.append(int(words[3])) 

f1.close()



chisel2fir = []
for line in f2:
    if not line.strip(): # don't count empty line
        continue

    if 'success' in line:
        words = line.split()
        chisel2fir.append(int(words[3])) 

f2.close()



fr = open(fname1, 'r')
fw = open("stat.fir2verilog", "w+")
fw.write("-------------------- FIRRTL  (Chirrtl -> Verilog) ---------\n")
is_first_line = True
idx = 0
for line in fr:
    if is_first_line == True:
        is_first_line = False
        continue

    if 'success' in line:
        time_diff = chisel2verilog[idx] - chisel2fir[idx]
        idx += 1
            
        words = line.split()
        words[3] = str(time_diff)
        words[5] = str("(" + time.strftime('%M:%S', time.gmtime(time_diff)) + ")")
        # print(time_diff)
        # print(words[5])

        new_line = ""
        for word in words:
            new_line = new_line + word + " "

        new_line += "\n"

        fw.write(new_line)


    else:
        fw.write(line)




fr.close()
fw.close()
