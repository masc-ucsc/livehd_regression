#!/usr/bin/python

def main():
    import subprocess
    nums = [10000, 20000, 30000, 40000, 50000, 60000, 70000, 80000, 90000, 100000, 500000]
    for num in nums:
      f = open("net1_" + str(num) + ".prp", "w+")

      for i in range(num):
          if num == 1:
              f.write("    %%out = $a\n")
              break
          if i == 0:
              f.write("    tmp0 = $a + 0\n")
          elif i == num-1:
              f.write("    %%out = tmp%d\n" % (i-1))
          else:
              f.write("    tmp%d = cell1(tmp%d, %d).out\n" % (i, i-1, i))

      f.close()
if __name__ == "__main__":
    main()

# WARNING:
# Before running this test, run this in lgshell (populate the cell types)
# inou.pyrope files:cell1.prp |> pass.compiler
