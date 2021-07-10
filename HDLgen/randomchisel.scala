package randomchisel
import chisel3._
import chisel3.util._

class randomchisel extends Module {
	val io = IO(new Bundle {
		val a0 = Input(UInt(1.W))
		val a1 = Input(SInt(1.W))
		val a2 = Input(UInt(1.W))
		val a3 = Input(SInt(1.W))
		val a4 = Input(UInt(1.W))
		val a5 = Input(SInt(1.W))
		val a6 = Input(UInt(1.W))
		val a7 = Input(SInt(1.W))
		val a8 = Input(UInt(1.W))
		val a9 = Input(SInt(1.W))
		val a10 = Input(UInt(1.W))
		val a11 = Input(SInt(1.W))
		val a12 = Input(UInt(1.W))
		val a13 = Input(SInt(1.W))
		val a14 = Input(UInt(1.W))
		val a15 = Input(SInt(1.W))
		val a16 = Input(UInt(1.W))
		val a17 = Input(SInt(1.W))
		val a18 = Input(UInt(1.W))
		val a19 = Input(SInt(1.W))
		val y = Output(UInt(1.W))
	})

	val y18 = Wire(UInt(1.W))


	
	y18 := (~(Mux((~(!io.a15(0,0))).asUInt.asBool,(io.a0(0)).asUInt,(~Cat(((io.a13(0)).asSInt >> Cat((Mux((io.a2(0)).asUInt.asBool,((io.a3(0,0)<io.a6(0,0))).asUInt,((io.a10(0,0).andR)).asUInt))))(0))))))
	io.y := y18 // Cat(y18(0,0))
}