#!/usr/bin/python

def main():
    import subprocess
    nums = [1,10, 100, 1000, 10000]
    #nums = [100, 1000, 10000, 20000, 30000, 40000, 50000, 60000, 70000, 80000, 90000, 100000, 200000, 300000, 400000, 500000, 600000, 700000, 800000, 900000, 1000000]
    
    for num in nums:
      f = open("pipe_" + str(num) + ".v", "w+")

      f.write("module pipe_" + str(num) + "(\n")
      f.write("    input a,\n")
      f.write("    input b,\n")

      if num > 1:
          f.write("    input clk,\n")
          f.write("    input reset,\n")
      
      f.write("    output reg s\n")
      f.write("    );\n\n")

      for i in range(num):
          if num == 1:
              f.write(f"    assign s = a ^ b;\n")
              break
          if i == 0:
              f.write(f"    wire t{i} = a ^ b;\n")
          elif i == (num - 1):
              f.write(f"    reg r{i-1};\n")
              f.write(f"    assign s = r{i-1} ^ a;\n")
          elif (i % 3) == 0:
              f.write(f"    reg r{i-1};\n")
              f.write(f"    wire t{i} = r{i-1} | a;\n")
          elif (i % 3) == 1:
              f.write(f"    reg r{i-1};\n")
              f.write(f"    wire t{i} = r{i-1} & a;\n")
          else:
              f.write(f"    reg r{i-1};\n")
              f.write(f"    wire t{i} = r{i-1} ^ a;\n")
 
      if num > 1:
          f.write(f"\n    always @(posedge clk) begin\n")
          f.write(f"      if (reset) begin\n")
      
          for i in range(0,num-1):
              f.write(f"        r{i} <= 0;\n")

          f.write(f"      end else begin\n")
          
          for i in range(0,num-1):
              f.write(f"        r{i} <= t{i};\n")

          f.write(f"      end\n")
          f.write(f"    end\n")
      
      f.write(f"\n\nendmodule")
      f.close()
if __name__ == "__main__":
    main()

'''
      for i in range(num):
          if num == 1:
              f.write("    wire s = a ^ b;\n")
              break
          if i == 0:
              f.write("    wire t0 = a ^ b;\n")
          elif i == num-1:
              f.write("    assign s = t%d ^ a;\n" % (i-1))
          elif (i &0x0F) == 0xF:
              f.write("    wire t%d = t%d & a;\n" % (i, i-1)) 
          elif (i&0x0F) == 0x7:
              f.write("    wire t%d = t%d | a;\n" % (i, i-1))
          else:
              f.write("    wire t%d = t%d ^ a;\n" % (i, i-1))
'''   
