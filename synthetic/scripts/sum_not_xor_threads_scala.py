#!/usr/bin/python
def main():
    sub_chain_sizes = [2, 125, 250, 375, 500, 625, 750, 875, 1000]
    # sub_chain_sizes = [4]
    # instance_num  = 64
    instance_num  = 64
    for size in sub_chain_sizes:
        f = open("SNX%dThread%d.scala" %(size*instance_num*3, instance_num), "w+")
        f.write("package SNX%dThread%d\n" %(size*instance_num*3, instance_num))
        f.write("import chisel3._\n")


        f.write("class SNX%d extends Module {\n" %(size*3))
        f.write("  val io = IO(new Bundle {\n")
        f.write("    val a = Input(UInt(8.W))\n")
        f.write("    val b = Input(UInt(8.W))\n")
        f.write("    val z = Output(UInt(8.W))\n")
        f.write("  })\n")
        for i in range(size):
            if i == 0:
                f.write("  val t0   = io.a + io.b\n")
                f.write("  val inv0 = ~t0\n")
                f.write("  val x0   = t0 ^ inv0\n")
            else:
                f.write("  val t%d    = x%d + x%d\n"   %(i, i-1, i-1))
                f.write("  val inv%d  = ~t%d\n"        %(i, i))
                f.write("  val x%d    = t%d ^ inv%d\n" %(i, i,i))


        f.write("  io.z := x%d ^ io.a\n" %(size-1))
        f.write("}\n")

        f.write("class SNX%dThread%d extends Module {\n" %(size*instance_num*3, instance_num))
        f.write("  val io = IO(new Bundle {\n")
        f.write("    val a = Input(UInt(8.W))\n")
        f.write("    val b = Input(UInt(8.W))\n")
        f.write("    val z = Output(UInt(8.W))\n")
        f.write("  })\n")

        for i in range(instance_num):
            f.write("\n  val m%d = Module(new SNX%d())\n" %(i, size*3))
            f.write("  m%d.io.a := io.a\n" %(i))
            f.write("  m%d.io.b := io.b\n" %(i))

        for i in range(instance_num):
            if i == 0:
                f.write("  val sum = m%d.io.z" %(i))
            else:
                f.write(" + m%d.io.z" %(i))

        f.write("\n")

        f.write("  io.z := sum ^ io.a\n")
        f.write("}\n")
        f.close()
if __name__ == "__main__":
    main()


