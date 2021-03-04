#!/usr/bin/python
def main():
    sub_chain_sizes = [2, 125, 250, 500, 750, 1000, 1250, 1500, 1750, 2000]
    # sub_chain_sizes = [4]
    # instance_num  = 64
    instance_num  = 64
    for size in sub_chain_sizes:
        # f = open("Xor" + str(size*instance_num) + "Thread" + str(instance_num) + ".scala", "w+")
        f = open("Xor%dThread%d.scala" %(size*instance_num, instance_num), "w+")
        f.write("package Xor%dThread%d\n" %(size*instance_num, instance_num))
        f.write("import chisel3._\n")


        f.write("class Xor%d extends Module {\n" %(size))
        f.write("  val io = IO(new Bundle {\n")
        f.write("    val ii = Input(UInt(8.W))\n")
        f.write("    val iivec = Input(Vec(%d, UInt(8.W)))\n" %(size-1))
        f.write("    val oo = Output(UInt(8.W))\n")
        f.write("  })\n")

        f.write("  val tmp_vec = Wire(Vec(%d, UInt(8.W)))\n" %(size))
        f.write("  tmp_vec(0) := io.ii\n\n")
        f.write("  for (i <- 1 to %d) {\n" %(size-1))
        f.write("    tmp_vec(i) := tmp_vec(i-1) ^ io.iivec(i-1)\n")
        f.write("  }\n\n")
        f.write("  io.oo := tmp_vec(%d)\n" %(size-1))
        f.write("}\n")

        f.write("class Xor%dThread%d extends Module {\n" %(size*instance_num, instance_num))
        f.write("  val io = IO(new Bundle {\n")
        f.write("    val ii = Input(UInt(8.W))\n")
        f.write("    val iivec = Input(Vec(%d, UInt(8.W)))\n" %(size-1))
        f.write("    val oo = Output(UInt(8.W))\n")
        f.write("  })\n")

        for i in range(instance_num):
            f.write("\n  val m%d = Module(new Xor%d())\n" %(i, size))
            if i == 0:
                f.write("  m%d.io.ii := io.ii\n" %(i))
            else:
                f.write("  m%d.io.ii := m%d.io.oo\n" %(i, i-1))
            f.write("  for (i <- 0 to %d) {\n" %(size-1-1))
            f.write("    m%d.io.iivec(i) := io.iivec(i)\n" %(i))
            f.write("  }\n")

        f.write("  val tmp_wire = Wire(UInt(8.W))\n")
        f.write("  tmp_wire := m%d.io.oo\n" %(instance_num-1))
        f.write("  val tmp_const = 255.U(8.W)\n")
        f.write("  io.oo := tmp_wire & tmp_const\n")
        f.write("}\n")
        f.close()
if __name__ == "__main__":
    main()


