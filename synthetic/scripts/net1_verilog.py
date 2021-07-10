#!/usr/bin/python

def main():
    import subprocess
    nums = [10000, 20000, 30000, 40000, 50000, 60000, 70000, 80000, 90000, 100000, 500000]
    for num in nums:
      f = open("net1_" + str(num) + ".v", "w+")

      f.write("module net1_" + str(num) + "(\n")
      f.write("    input a,\n")
      f.write("    output out\n")
      f.write("    );\n\n")

      for i in range(num):
          if num == 1:
              f.write("    wire out = a;\n")
              break
          if i == 0:
              f.write("    wire tmp0;\n")
              f.write("    assign tmp0 = a;\n")
          elif i == num-1:
              f.write("    assign out = tmp%d;\n" % (i-1))
          else:
              f.write("    wire tmp%d;\n" % (i))
              f.write("    cell1 i%d(tmp%d, %d, tmp%d);\n" % (i,i,i,i-1)) # out, 0, 1

      f.write("\n\nendmodule")
      f.close()
if __name__ == "__main__":
    main()
