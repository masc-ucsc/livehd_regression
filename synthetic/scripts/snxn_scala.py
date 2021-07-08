#!/usr/bin/python
def main():
    # sub_chain_sizes = [1, 50, 100, 150, 200, 250, 300, 350, 400, 450]
    # sub_chain_sizes = [1, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
    sub_chain_sizes = [100]
    instance_num  = 16
    # instance_num  = 256
    # instance_num  = 32
    # instance_num  = 16
    for size in sub_chain_sizes:
        f = open("Snx%dInsts%d.scala" %(size*instance_num*4, instance_num), "w+")
        f.write("package Snx%dInsts%d\n" %(size*instance_num*4, instance_num))
        f.write("import chisel3._\n")
        f.write("import scala.language.reflectiveCalls\n")


        for i in range(instance_num):
            f.write("class Snx%d_%d extends Module {\n" %(i, size*4))
            f.write("  val io = IO(new Bundle {\n")
            f.write("    val a = Input(UInt(1.W))\n")
            f.write("    val b = Input(UInt(1.W))\n")
            f.write("    val z = Output(UInt(%d.W))\n"%(i+1))
            f.write("  })\n")
            for i in range(size):
                if i == 0:
                    f.write("  val t0    = io.a + io.b\n")
                    f.write("  val inv0  = ~t0\n")
                    f.write("  val x0    = t0 ^ inv0\n")
                    f.write("  val invx0 = ~x0\n")
                else:
                    f.write("  val t%d    = x%d + invx%d\n"   %(i, i-1, i-1))
                    f.write("  val inv%d  = ~t%d\n"           %(i, i))
                    f.write("  val x%d    = t%d ^ inv%d\n"    %(i, i,i))
                    f.write("  val invx%d = ~x%d\n"           %(i, i))


            f.write("  io.z := invx%d ^ io.a\n" %(size-1))
            f.write("}\n")

        f.write("class Snx%dInsts%d extends Module {\n" %(size*instance_num*4, instance_num))
        f.write("  val io = IO(new Bundle {\n")
        f.write("    val a = Input(UInt(1.W))\n")
        f.write("    val b = Input(UInt(1.W))\n")
        f.write("    val z = Output(UInt(1.W))\n")
        f.write("  })\n")

        for i in range(instance_num):
            f.write("\n  val m%d = Module(new Snx%d_%d())\n" %(i, i, size*4))
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


