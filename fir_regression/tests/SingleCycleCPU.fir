FIRRTL version 1.1.0
circuit SingleCycleCPU :
  module Control :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip opcode : UInt<7>, itype : UInt<1>, aluop : UInt<1>, xsrc : UInt<1>, ysrc : UInt<1>, branch : UInt<1>, jal : UInt<1>, jalr : UInt<1>, plus4 : UInt<1>, resultselect : UInt<1>, memop : UInt<2>, toreg : UInt<1>, regwrite : UInt<1>, validinst : UInt<1>}

    node _T = and(io.opcode, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_1 = eq(UInt<6>("h33"), _T) @[Lookup.scala 31:38]
    node _T_2 = and(io.opcode, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_3 = eq(UInt<5>("h13"), _T_2) @[Lookup.scala 31:38]
    node _T_4 = and(io.opcode, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_5 = eq(UInt<2>("h3"), _T_4) @[Lookup.scala 31:38]
    node _T_6 = and(io.opcode, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_7 = eq(UInt<6>("h23"), _T_6) @[Lookup.scala 31:38]
    node _T_8 = and(io.opcode, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_9 = eq(UInt<7>("h63"), _T_8) @[Lookup.scala 31:38]
    node _T_10 = and(io.opcode, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_11 = eq(UInt<6>("h37"), _T_10) @[Lookup.scala 31:38]
    node _T_12 = and(io.opcode, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_13 = eq(UInt<5>("h17"), _T_12) @[Lookup.scala 31:38]
    node _T_14 = and(io.opcode, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_15 = eq(UInt<7>("h6f"), _T_14) @[Lookup.scala 31:38]
    node _T_16 = and(io.opcode, UInt<7>("h7f")) @[Lookup.scala 31:38]
    node _T_17 = eq(UInt<7>("h67"), _T_16) @[Lookup.scala 31:38]
    node _T_18 = mux(_T_17, UInt<1>("h0"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_19 = mux(_T_15, UInt<1>("h0"), _T_18) @[Lookup.scala 33:37]
    node _T_20 = mux(_T_13, UInt<1>("h0"), _T_19) @[Lookup.scala 33:37]
    node _T_21 = mux(_T_11, UInt<1>("h0"), _T_20) @[Lookup.scala 33:37]
    node _T_22 = mux(_T_9, UInt<1>("h0"), _T_21) @[Lookup.scala 33:37]
    node _T_23 = mux(_T_7, UInt<1>("h0"), _T_22) @[Lookup.scala 33:37]
    node _T_24 = mux(_T_5, UInt<1>("h0"), _T_23) @[Lookup.scala 33:37]
    node _T_25 = mux(_T_3, UInt<1>("h1"), _T_24) @[Lookup.scala 33:37]
    node signals_0 = mux(_T_1, UInt<1>("h0"), _T_25) @[Lookup.scala 33:37]
    node _T_26 = mux(_T_17, UInt<1>("h0"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_27 = mux(_T_15, UInt<1>("h0"), _T_26) @[Lookup.scala 33:37]
    node _T_28 = mux(_T_13, UInt<1>("h0"), _T_27) @[Lookup.scala 33:37]
    node _T_29 = mux(_T_11, UInt<1>("h0"), _T_28) @[Lookup.scala 33:37]
    node _T_30 = mux(_T_9, UInt<1>("h0"), _T_29) @[Lookup.scala 33:37]
    node _T_31 = mux(_T_7, UInt<1>("h0"), _T_30) @[Lookup.scala 33:37]
    node _T_32 = mux(_T_5, UInt<1>("h0"), _T_31) @[Lookup.scala 33:37]
    node _T_33 = mux(_T_3, UInt<1>("h1"), _T_32) @[Lookup.scala 33:37]
    node signals_1 = mux(_T_1, UInt<1>("h1"), _T_33) @[Lookup.scala 33:37]
    node _T_34 = mux(_T_17, UInt<1>("h1"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_35 = mux(_T_15, UInt<1>("h1"), _T_34) @[Lookup.scala 33:37]
    node _T_36 = mux(_T_13, UInt<1>("h1"), _T_35) @[Lookup.scala 33:37]
    node _T_37 = mux(_T_11, UInt<1>("h0"), _T_36) @[Lookup.scala 33:37]
    node _T_38 = mux(_T_9, UInt<1>("h0"), _T_37) @[Lookup.scala 33:37]
    node _T_39 = mux(_T_7, UInt<1>("h0"), _T_38) @[Lookup.scala 33:37]
    node _T_40 = mux(_T_5, UInt<1>("h0"), _T_39) @[Lookup.scala 33:37]
    node _T_41 = mux(_T_3, UInt<1>("h0"), _T_40) @[Lookup.scala 33:37]
    node signals_2 = mux(_T_1, UInt<1>("h0"), _T_41) @[Lookup.scala 33:37]
    node _T_42 = mux(_T_17, UInt<1>("h0"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_43 = mux(_T_15, UInt<1>("h0"), _T_42) @[Lookup.scala 33:37]
    node _T_44 = mux(_T_13, UInt<1>("h1"), _T_43) @[Lookup.scala 33:37]
    node _T_45 = mux(_T_11, UInt<1>("h0"), _T_44) @[Lookup.scala 33:37]
    node _T_46 = mux(_T_9, UInt<1>("h0"), _T_45) @[Lookup.scala 33:37]
    node _T_47 = mux(_T_7, UInt<1>("h1"), _T_46) @[Lookup.scala 33:37]
    node _T_48 = mux(_T_5, UInt<1>("h1"), _T_47) @[Lookup.scala 33:37]
    node _T_49 = mux(_T_3, UInt<1>("h1"), _T_48) @[Lookup.scala 33:37]
    node signals_3 = mux(_T_1, UInt<1>("h0"), _T_49) @[Lookup.scala 33:37]
    node _T_50 = mux(_T_17, UInt<1>("h0"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_51 = mux(_T_15, UInt<1>("h0"), _T_50) @[Lookup.scala 33:37]
    node _T_52 = mux(_T_13, UInt<1>("h0"), _T_51) @[Lookup.scala 33:37]
    node _T_53 = mux(_T_11, UInt<1>("h0"), _T_52) @[Lookup.scala 33:37]
    node _T_54 = mux(_T_9, UInt<1>("h1"), _T_53) @[Lookup.scala 33:37]
    node _T_55 = mux(_T_7, UInt<1>("h0"), _T_54) @[Lookup.scala 33:37]
    node _T_56 = mux(_T_5, UInt<1>("h0"), _T_55) @[Lookup.scala 33:37]
    node _T_57 = mux(_T_3, UInt<1>("h0"), _T_56) @[Lookup.scala 33:37]
    node signals_4 = mux(_T_1, UInt<1>("h0"), _T_57) @[Lookup.scala 33:37]
    node _T_58 = mux(_T_17, UInt<1>("h0"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_59 = mux(_T_15, UInt<1>("h1"), _T_58) @[Lookup.scala 33:37]
    node _T_60 = mux(_T_13, UInt<1>("h0"), _T_59) @[Lookup.scala 33:37]
    node _T_61 = mux(_T_11, UInt<1>("h0"), _T_60) @[Lookup.scala 33:37]
    node _T_62 = mux(_T_9, UInt<1>("h0"), _T_61) @[Lookup.scala 33:37]
    node _T_63 = mux(_T_7, UInt<1>("h0"), _T_62) @[Lookup.scala 33:37]
    node _T_64 = mux(_T_5, UInt<1>("h0"), _T_63) @[Lookup.scala 33:37]
    node _T_65 = mux(_T_3, UInt<1>("h0"), _T_64) @[Lookup.scala 33:37]
    node signals_5 = mux(_T_1, UInt<1>("h0"), _T_65) @[Lookup.scala 33:37]
    node _T_66 = mux(_T_17, UInt<1>("h1"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_67 = mux(_T_15, UInt<1>("h0"), _T_66) @[Lookup.scala 33:37]
    node _T_68 = mux(_T_13, UInt<1>("h0"), _T_67) @[Lookup.scala 33:37]
    node _T_69 = mux(_T_11, UInt<1>("h0"), _T_68) @[Lookup.scala 33:37]
    node _T_70 = mux(_T_9, UInt<1>("h0"), _T_69) @[Lookup.scala 33:37]
    node _T_71 = mux(_T_7, UInt<1>("h0"), _T_70) @[Lookup.scala 33:37]
    node _T_72 = mux(_T_5, UInt<1>("h0"), _T_71) @[Lookup.scala 33:37]
    node _T_73 = mux(_T_3, UInt<1>("h0"), _T_72) @[Lookup.scala 33:37]
    node signals_6 = mux(_T_1, UInt<1>("h0"), _T_73) @[Lookup.scala 33:37]
    node _T_74 = mux(_T_17, UInt<1>("h1"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_75 = mux(_T_15, UInt<1>("h1"), _T_74) @[Lookup.scala 33:37]
    node _T_76 = mux(_T_13, UInt<1>("h0"), _T_75) @[Lookup.scala 33:37]
    node _T_77 = mux(_T_11, UInt<1>("h0"), _T_76) @[Lookup.scala 33:37]
    node _T_78 = mux(_T_9, UInt<1>("h0"), _T_77) @[Lookup.scala 33:37]
    node _T_79 = mux(_T_7, UInt<1>("h0"), _T_78) @[Lookup.scala 33:37]
    node _T_80 = mux(_T_5, UInt<1>("h0"), _T_79) @[Lookup.scala 33:37]
    node _T_81 = mux(_T_3, UInt<1>("h0"), _T_80) @[Lookup.scala 33:37]
    node signals_7 = mux(_T_1, UInt<1>("h0"), _T_81) @[Lookup.scala 33:37]
    node _T_82 = mux(_T_17, UInt<1>("h0"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_83 = mux(_T_15, UInt<1>("h0"), _T_82) @[Lookup.scala 33:37]
    node _T_84 = mux(_T_13, UInt<1>("h0"), _T_83) @[Lookup.scala 33:37]
    node _T_85 = mux(_T_11, UInt<1>("h1"), _T_84) @[Lookup.scala 33:37]
    node _T_86 = mux(_T_9, UInt<1>("h0"), _T_85) @[Lookup.scala 33:37]
    node _T_87 = mux(_T_7, UInt<1>("h0"), _T_86) @[Lookup.scala 33:37]
    node _T_88 = mux(_T_5, UInt<1>("h0"), _T_87) @[Lookup.scala 33:37]
    node _T_89 = mux(_T_3, UInt<1>("h0"), _T_88) @[Lookup.scala 33:37]
    node signals_8 = mux(_T_1, UInt<1>("h0"), _T_89) @[Lookup.scala 33:37]
    node _T_90 = mux(_T_17, UInt<1>("h0"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_91 = mux(_T_15, UInt<1>("h0"), _T_90) @[Lookup.scala 33:37]
    node _T_92 = mux(_T_13, UInt<1>("h0"), _T_91) @[Lookup.scala 33:37]
    node _T_93 = mux(_T_11, UInt<1>("h0"), _T_92) @[Lookup.scala 33:37]
    node _T_94 = mux(_T_9, UInt<1>("h0"), _T_93) @[Lookup.scala 33:37]
    node _T_95 = mux(_T_7, UInt<2>("h3"), _T_94) @[Lookup.scala 33:37]
    node _T_96 = mux(_T_5, UInt<2>("h2"), _T_95) @[Lookup.scala 33:37]
    node _T_97 = mux(_T_3, UInt<1>("h0"), _T_96) @[Lookup.scala 33:37]
    node signals_9 = mux(_T_1, UInt<1>("h0"), _T_97) @[Lookup.scala 33:37]
    node _T_98 = mux(_T_17, UInt<1>("h0"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_99 = mux(_T_15, UInt<1>("h0"), _T_98) @[Lookup.scala 33:37]
    node _T_100 = mux(_T_13, UInt<1>("h0"), _T_99) @[Lookup.scala 33:37]
    node _T_101 = mux(_T_11, UInt<1>("h0"), _T_100) @[Lookup.scala 33:37]
    node _T_102 = mux(_T_9, UInt<1>("h0"), _T_101) @[Lookup.scala 33:37]
    node _T_103 = mux(_T_7, UInt<1>("h0"), _T_102) @[Lookup.scala 33:37]
    node _T_104 = mux(_T_5, UInt<1>("h1"), _T_103) @[Lookup.scala 33:37]
    node _T_105 = mux(_T_3, UInt<1>("h0"), _T_104) @[Lookup.scala 33:37]
    node signals_10 = mux(_T_1, UInt<1>("h0"), _T_105) @[Lookup.scala 33:37]
    node _T_106 = mux(_T_17, UInt<1>("h1"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_107 = mux(_T_15, UInt<1>("h1"), _T_106) @[Lookup.scala 33:37]
    node _T_108 = mux(_T_13, UInt<1>("h1"), _T_107) @[Lookup.scala 33:37]
    node _T_109 = mux(_T_11, UInt<1>("h1"), _T_108) @[Lookup.scala 33:37]
    node _T_110 = mux(_T_9, UInt<1>("h0"), _T_109) @[Lookup.scala 33:37]
    node _T_111 = mux(_T_7, UInt<1>("h0"), _T_110) @[Lookup.scala 33:37]
    node _T_112 = mux(_T_5, UInt<1>("h1"), _T_111) @[Lookup.scala 33:37]
    node _T_113 = mux(_T_3, UInt<1>("h1"), _T_112) @[Lookup.scala 33:37]
    node signals_11 = mux(_T_1, UInt<1>("h1"), _T_113) @[Lookup.scala 33:37]
    node _T_114 = mux(_T_17, UInt<1>("h1"), UInt<1>("h0")) @[Lookup.scala 33:37]
    node _T_115 = mux(_T_15, UInt<1>("h1"), _T_114) @[Lookup.scala 33:37]
    node _T_116 = mux(_T_13, UInt<1>("h1"), _T_115) @[Lookup.scala 33:37]
    node _T_117 = mux(_T_11, UInt<1>("h1"), _T_116) @[Lookup.scala 33:37]
    node _T_118 = mux(_T_9, UInt<1>("h1"), _T_117) @[Lookup.scala 33:37]
    node _T_119 = mux(_T_7, UInt<1>("h1"), _T_118) @[Lookup.scala 33:37]
    node _T_120 = mux(_T_5, UInt<1>("h1"), _T_119) @[Lookup.scala 33:37]
    node _T_121 = mux(_T_3, UInt<1>("h1"), _T_120) @[Lookup.scala 33:37]
    node signals_12 = mux(_T_1, UInt<1>("h1"), _T_121) @[Lookup.scala 33:37]
    io.itype <= signals_0 @[control.scala 76:19]
    io.aluop <= signals_1 @[control.scala 77:19]
    io.xsrc <= signals_2 @[control.scala 78:19]
    io.ysrc <= signals_3 @[control.scala 79:19]
    io.branch <= signals_4 @[control.scala 80:19]
    io.jal <= signals_5 @[control.scala 81:19]
    io.jalr <= signals_6 @[control.scala 82:19]
    io.plus4 <= signals_7 @[control.scala 83:19]
    io.resultselect <= signals_8 @[control.scala 84:19]
    io.memop <= signals_9 @[control.scala 85:19]
    io.toreg <= signals_10 @[control.scala 86:19]
    io.regwrite <= signals_11 @[control.scala 87:19]
    io.validinst <= signals_12 @[control.scala 88:19]

  module NextPC :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip branch : UInt<1>, flip jal : UInt<1>, flip jalr : UInt<1>, flip inputx : UInt<32>, flip inputy : UInt<32>, flip funct3 : UInt<3>, flip pc : UInt<32>, flip imm : UInt<32>, nextpc : UInt<32>, taken : UInt<1>}

    when io.branch : @[nextpc.scala 38:20]
      node _T = eq(io.funct3, UInt<1>("h0")) @[nextpc.scala 39:21]
      when _T : @[nextpc.scala 39:40]
        node _T_1 = eq(io.inputx, io.inputy) @[nextpc.scala 39:64]
        io.taken <= _T_1 @[nextpc.scala 39:51]
        skip
      else :
        node _T_2 = eq(io.funct3, UInt<1>("h1")) @[nextpc.scala 40:26]
        when _T_2 : @[nextpc.scala 40:40]
          node _T_3 = neq(io.inputx, io.inputy) @[nextpc.scala 40:64]
          io.taken <= _T_3 @[nextpc.scala 40:51]
          skip
        else :
          node _T_4 = eq(io.funct3, UInt<3>("h4")) @[nextpc.scala 41:26]
          when _T_4 : @[nextpc.scala 41:40]
            node _T_5 = asSInt(io.inputx) @[nextpc.scala 41:65]
            node _T_6 = asSInt(io.inputy) @[nextpc.scala 41:84]
            node _T_7 = lt(_T_5, _T_6) @[nextpc.scala 41:72]
            io.taken <= _T_7 @[nextpc.scala 41:51]
            skip
          else :
            node _T_8 = eq(io.funct3, UInt<3>("h5")) @[nextpc.scala 42:26]
            when _T_8 : @[nextpc.scala 42:40]
              node _T_9 = asSInt(io.inputx) @[nextpc.scala 42:65]
              node _T_10 = asSInt(io.inputy) @[nextpc.scala 42:85]
              node _T_11 = geq(_T_9, _T_10) @[nextpc.scala 42:72]
              io.taken <= _T_11 @[nextpc.scala 42:51]
              skip
            else :
              node _T_12 = eq(io.funct3, UInt<3>("h6")) @[nextpc.scala 43:26]
              when _T_12 : @[nextpc.scala 43:40]
                node _T_13 = lt(io.inputx, io.inputy) @[nextpc.scala 43:64]
                io.taken <= _T_13 @[nextpc.scala 43:51]
                skip
              else :
                node _T_14 = eq(io.funct3, UInt<3>("h7")) @[nextpc.scala 44:26]
                when _T_14 : @[nextpc.scala 44:40]
                  node _T_15 = geq(io.inputx, io.inputy) @[nextpc.scala 44:64]
                  io.taken <= _T_15 @[nextpc.scala 44:51]
                  skip
                else :
                  io.taken <= UInt<1>("h0") @[nextpc.scala 45:51]
                  skip
      when io.taken : @[nextpc.scala 47:21]
        node _T_16 = add(io.pc, io.imm) @[nextpc.scala 48:26]
        node _T_17 = tail(_T_16, 1) @[nextpc.scala 48:26]
        io.nextpc <= _T_17 @[nextpc.scala 48:17]
        skip
      else :
        node _T_18 = add(io.pc, UInt<3>("h4")) @[nextpc.scala 50:26]
        node _T_19 = tail(_T_18, 1) @[nextpc.scala 50:26]
        io.nextpc <= _T_19 @[nextpc.scala 50:17]
        skip
      skip
    else :
      when io.jal : @[nextpc.scala 52:24]
        io.taken <= UInt<1>("h1") @[nextpc.scala 53:14]
        node _T_20 = add(io.pc, io.imm) @[nextpc.scala 54:24]
        node _T_21 = tail(_T_20, 1) @[nextpc.scala 54:24]
        io.nextpc <= _T_21 @[nextpc.scala 54:15]
        skip
      else :
        when io.jalr : @[nextpc.scala 55:25]
          io.taken <= UInt<1>("h1") @[nextpc.scala 56:14]
          node _T_22 = add(io.inputx, io.imm) @[nextpc.scala 57:28]
          node _T_23 = tail(_T_22, 1) @[nextpc.scala 57:28]
          io.nextpc <= _T_23 @[nextpc.scala 57:15]
          skip
        else :
          node _T_24 = add(io.pc, UInt<3>("h4")) @[nextpc.scala 59:24]
          node _T_25 = tail(_T_24, 1) @[nextpc.scala 59:24]
          io.nextpc <= _T_25 @[nextpc.scala 59:15]
          io.taken <= UInt<1>("h0") @[nextpc.scala 60:15]
          skip


  module ALU :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip operation : UInt<4>, flip inputx : UInt<32>, flip inputy : UInt<32>, result : UInt<32>}

    node _T = eq(io.operation, UInt<3>("h6")) @[alu.scala 25:22]
    when _T : @[alu.scala 25:37]
      node _T_1 = and(io.inputx, io.inputy) @[alu.scala 26:28]
      io.result <= _T_1 @[alu.scala 26:15]
      skip
    else :
      node _T_2 = eq(io.operation, UInt<3>("h5")) @[alu.scala 28:27]
      when _T_2 : @[alu.scala 28:42]
        node _T_3 = or(io.inputx, io.inputy) @[alu.scala 29:28]
        io.result <= _T_3 @[alu.scala 29:15]
        skip
      else :
        node _T_4 = eq(io.operation, UInt<3>("h7")) @[alu.scala 31:27]
        when _T_4 : @[alu.scala 31:42]
          node _T_5 = add(io.inputx, io.inputy) @[alu.scala 32:28]
          node _T_6 = tail(_T_5, 1) @[alu.scala 32:28]
          io.result <= _T_6 @[alu.scala 32:15]
          skip
        else :
          node _T_7 = eq(io.operation, UInt<3>("h4")) @[alu.scala 34:27]
          when _T_7 : @[alu.scala 34:42]
            node _T_8 = sub(io.inputx, io.inputy) @[alu.scala 35:28]
            node _T_9 = tail(_T_8, 1) @[alu.scala 35:28]
            io.result <= _T_9 @[alu.scala 35:15]
            skip
          else :
            node _T_10 = eq(io.operation, UInt<2>("h3")) @[alu.scala 37:27]
            when _T_10 : @[alu.scala 37:42]
              node _T_11 = asSInt(io.inputx) @[alu.scala 38:29]
              node _T_12 = bits(io.inputy, 4, 0) @[alu.scala 38:48]
              node _T_13 = dshr(_T_11, _T_12) @[alu.scala 38:36]
              node _T_14 = asUInt(_T_13) @[alu.scala 38:55]
              io.result <= _T_14 @[alu.scala 38:15]
              skip
            else :
              node _T_15 = eq(io.operation, UInt<1>("h1")) @[alu.scala 40:27]
              when _T_15 : @[alu.scala 40:42]
                node _T_16 = lt(io.inputx, io.inputy) @[alu.scala 41:29]
                io.result <= _T_16 @[alu.scala 41:15]
                skip
              else :
                node _T_17 = eq(io.operation, UInt<1>("h0")) @[alu.scala 43:27]
                when _T_17 : @[alu.scala 43:42]
                  node _T_18 = xor(io.inputx, io.inputy) @[alu.scala 44:28]
                  io.result <= _T_18 @[alu.scala 44:15]
                  skip
                else :
                  node _T_19 = eq(io.operation, UInt<2>("h2")) @[alu.scala 46:27]
                  when _T_19 : @[alu.scala 46:42]
                    node _T_20 = bits(io.inputy, 4, 0) @[alu.scala 47:40]
                    node _T_21 = dshr(io.inputx, _T_20) @[alu.scala 47:28]
                    io.result <= _T_21 @[alu.scala 47:15]
                    skip
                  else :
                    node _T_22 = eq(io.operation, UInt<4>("h9")) @[alu.scala 49:27]
                    when _T_22 : @[alu.scala 49:42]
                      node _T_23 = asSInt(io.inputx) @[alu.scala 50:29]
                      node _T_24 = asSInt(io.inputy) @[alu.scala 50:48]
                      node _T_25 = lt(_T_23, _T_24) @[alu.scala 50:36]
                      io.result <= _T_25 @[alu.scala 50:15]
                      skip
                    else :
                      node _T_26 = eq(io.operation, UInt<4>("h8")) @[alu.scala 52:27]
                      when _T_26 : @[alu.scala 52:42]
                        node _T_27 = bits(io.inputy, 4, 0) @[alu.scala 53:40]
                        node _T_28 = dshl(io.inputx, _T_27) @[alu.scala 53:28]
                        io.result <= _T_28 @[alu.scala 53:15]
                        skip
                      else :
                        node _T_29 = eq(io.operation, UInt<4>("ha")) @[alu.scala 55:27]
                        when _T_29 : @[alu.scala 55:42]
                          node _T_30 = or(io.inputx, io.inputy) @[alu.scala 56:30]
                          node _T_31 = not(_T_30) @[alu.scala 56:18]
                          io.result <= _T_31 @[alu.scala 56:15]
                          skip
                        else :
                          node _T_32 = eq(io.operation, UInt<4>("hb")) @[alu.scala 58:27]
                          when _T_32 : @[alu.scala 58:42]
                            node _T_33 = asSInt(io.inputx) @[alu.scala 59:29]
                            node _T_34 = asSInt(io.inputy) @[alu.scala 59:49]
                            node _T_35 = geq(_T_33, _T_34) @[alu.scala 59:36]
                            io.result <= _T_35 @[alu.scala 59:15]
                            skip
                          else :
                            node _T_36 = eq(io.operation, UInt<4>("hc")) @[alu.scala 61:27]
                            when _T_36 : @[alu.scala 61:42]
                              node _T_37 = geq(io.inputx, io.inputy) @[alu.scala 62:29]
                              io.result <= _T_37 @[alu.scala 62:15]
                              skip
                            else :
                              node _T_38 = eq(io.operation, UInt<4>("hd")) @[alu.scala 64:27]
                              when _T_38 : @[alu.scala 64:42]
                                node _T_39 = eq(io.inputx, io.inputy) @[alu.scala 65:28]
                                io.result <= _T_39 @[alu.scala 65:15]
                                skip
                              else :
                                node _T_40 = eq(io.operation, UInt<4>("he")) @[alu.scala 67:27]
                                when _T_40 : @[alu.scala 67:42]
                                  node _T_41 = neq(io.inputx, io.inputy) @[alu.scala 68:28]
                                  io.result <= _T_41 @[alu.scala 68:15]
                                  skip
                                else :
                                  io.result <= UInt<1>("h0") @[alu.scala 71:15]
                                  skip


  module ALUControl :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip aluop : UInt<1>, flip itype : UInt<1>, flip funct7 : UInt<7>, flip funct3 : UInt<3>, operation : UInt<4>}

    when io.aluop : @[alucontrol.scala 30:19]
      node _T = eq(io.funct3, UInt<1>("h0")) @[alucontrol.scala 31:21]
      when _T : @[alucontrol.scala 31:35]
        node _T_1 = eq(io.funct7, UInt<1>("h0")) @[alucontrol.scala 32:35]
        node _T_2 = or(io.itype, _T_1) @[alucontrol.scala 32:22]
        when _T_2 : @[alucontrol.scala 32:53]
          io.operation <= UInt<3>("h7") @[alucontrol.scala 33:22]
          skip
        else :
          io.operation <= UInt<3>("h4") @[alucontrol.scala 35:22]
          skip
        skip
      else :
        node _T_3 = eq(io.funct3, UInt<1>("h1")) @[alucontrol.scala 38:26]
        when _T_3 : @[alucontrol.scala 38:40]
          io.operation <= UInt<4>("h8") @[alucontrol.scala 38:55]
          skip
        else :
          node _T_4 = eq(io.funct3, UInt<2>("h2")) @[alucontrol.scala 39:26]
          when _T_4 : @[alucontrol.scala 39:40]
            io.operation <= UInt<4>("h9") @[alucontrol.scala 39:55]
            skip
          else :
            node _T_5 = eq(io.funct3, UInt<2>("h3")) @[alucontrol.scala 40:26]
            when _T_5 : @[alucontrol.scala 40:40]
              io.operation <= UInt<1>("h1") @[alucontrol.scala 40:55]
              skip
            else :
              node _T_6 = eq(io.funct3, UInt<3>("h4")) @[alucontrol.scala 41:26]
              when _T_6 : @[alucontrol.scala 41:40]
                io.operation <= UInt<1>("h0") @[alucontrol.scala 41:55]
                skip
              else :
                node _T_7 = eq(io.funct3, UInt<3>("h5")) @[alucontrol.scala 42:26]
                when _T_7 : @[alucontrol.scala 42:40]
                  node _T_8 = eq(io.funct7, UInt<1>("h0")) @[alucontrol.scala 43:23]
                  when _T_8 : @[alucontrol.scala 43:41]
                    io.operation <= UInt<2>("h2") @[alucontrol.scala 44:22]
                    skip
                  else :
                    io.operation <= UInt<2>("h3") @[alucontrol.scala 46:22]
                    skip
                  skip
                else :
                  node _T_9 = eq(io.funct3, UInt<3>("h6")) @[alucontrol.scala 49:26]
                  when _T_9 : @[alucontrol.scala 49:40]
                    io.operation <= UInt<3>("h5") @[alucontrol.scala 49:55]
                    skip
                  else :
                    io.operation <= UInt<3>("h6") @[alucontrol.scala 51:20]
                    skip
      skip
    else :
      io.operation <= UInt<3>("h7") @[alucontrol.scala 53:18]
      skip


  module RegisterFile :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip readreg1 : UInt<5>, flip readreg2 : UInt<5>, flip writereg : UInt<5>, flip writedata : UInt<32>, flip wen : UInt<1>, readdata1 : UInt<32>, readdata2 : UInt<32>}

    reg regs : UInt<32>[32], clock with :
      reset => (UInt<1>("h0"), regs) @[register-file.scala 52:17]
    when io.wen : @[register-file.scala 55:17]
      regs[io.writereg] <= io.writedata @[register-file.scala 56:23]
      skip
    io.readdata1 <= regs[io.readreg1] @[register-file.scala 61:16]
    io.readdata2 <= regs[io.readreg2] @[register-file.scala 62:16]

  module ImmediateGenerator :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip instruction : UInt<32>, sextImm : UInt<32>}

    io.sextImm <= UInt<1>("h0") @[helpers.scala 42:14]
    node opcode = bits(io.instruction, 6, 0) @[helpers.scala 44:30]
    node _T = eq(UInt<6>("h37"), opcode) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      node _T_1 = bits(io.instruction, 31, 12) @[helpers.scala 47:31]
      node _T_2 = mux(UInt<1>("h0"), UInt<12>("hfff"), UInt<12>("h0")) @[Bitwise.scala 72:12]
      node _T_3 = cat(_T_1, _T_2) @[Cat.scala 30:58]
      io.sextImm <= _T_3 @[helpers.scala 48:18]
      skip
    else :
      node _T_4 = eq(UInt<5>("h17"), opcode) @[Conditional.scala 37:30]
      when _T_4 : @[Conditional.scala 39:67]
        node _T_5 = bits(io.instruction, 31, 12) @[helpers.scala 51:31]
        node _T_6 = mux(UInt<1>("h0"), UInt<12>("hfff"), UInt<12>("h0")) @[Bitwise.scala 72:12]
        node _T_7 = cat(_T_5, _T_6) @[Cat.scala 30:58]
        io.sextImm <= _T_7 @[helpers.scala 52:18]
        skip
      else :
        node _T_8 = eq(UInt<7>("h6f"), opcode) @[Conditional.scala 37:30]
        when _T_8 : @[Conditional.scala 39:67]
          node _T_9 = bits(io.instruction, 31, 31) @[helpers.scala 55:35]
          node _T_10 = bits(io.instruction, 19, 12) @[helpers.scala 55:55]
          node _T_11 = bits(io.instruction, 20, 20) @[helpers.scala 56:35]
          node _T_12 = bits(io.instruction, 30, 21) @[helpers.scala 56:55]
          node _T_13 = cat(_T_11, _T_12) @[Cat.scala 30:58]
          node _T_14 = cat(_T_9, _T_10) @[Cat.scala 30:58]
          node _T_15 = cat(_T_14, _T_13) @[Cat.scala 30:58]
          node _T_16 = bits(_T_15, 19, 19) @[helpers.scala 57:36]
          node _T_17 = bits(_T_16, 0, 0) @[Bitwise.scala 72:15]
          node _T_18 = mux(_T_17, UInt<11>("h7ff"), UInt<11>("h0")) @[Bitwise.scala 72:12]
          node _T_19 = cat(_T_18, _T_15) @[Cat.scala 30:58]
          node _T_20 = cat(_T_19, UInt<1>("h0")) @[Cat.scala 30:58]
          io.sextImm <= _T_20 @[helpers.scala 57:18]
          skip
        else :
          node _T_21 = eq(UInt<7>("h67"), opcode) @[Conditional.scala 37:30]
          when _T_21 : @[Conditional.scala 39:67]
            node _T_22 = bits(io.instruction, 31, 20) @[helpers.scala 60:31]
            node _T_23 = bits(_T_22, 11, 11) @[helpers.scala 61:36]
            node _T_24 = bits(_T_23, 0, 0) @[Bitwise.scala 72:15]
            node _T_25 = mux(_T_24, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
            node _T_26 = cat(_T_25, _T_22) @[Cat.scala 30:58]
            io.sextImm <= _T_26 @[helpers.scala 61:18]
            skip
          else :
            node _T_27 = eq(UInt<7>("h63"), opcode) @[Conditional.scala 37:30]
            when _T_27 : @[Conditional.scala 39:67]
              node _T_28 = bits(io.instruction, 31, 31) @[helpers.scala 64:35]
              node _T_29 = bits(io.instruction, 7, 7) @[helpers.scala 64:55]
              node _T_30 = bits(io.instruction, 30, 25) @[helpers.scala 65:35]
              node _T_31 = bits(io.instruction, 11, 8) @[helpers.scala 65:58]
              node _T_32 = cat(_T_30, _T_31) @[Cat.scala 30:58]
              node _T_33 = cat(_T_28, _T_29) @[Cat.scala 30:58]
              node _T_34 = cat(_T_33, _T_32) @[Cat.scala 30:58]
              node _T_35 = bits(_T_34, 11, 11) @[helpers.scala 66:37]
              node _T_36 = bits(_T_35, 0, 0) @[Bitwise.scala 72:15]
              node _T_37 = mux(_T_36, UInt<19>("h7ffff"), UInt<19>("h0")) @[Bitwise.scala 72:12]
              node _T_38 = cat(_T_37, _T_34) @[Cat.scala 30:58]
              node _T_39 = cat(_T_38, UInt<1>("h0")) @[Cat.scala 30:58]
              io.sextImm <= _T_39 @[helpers.scala 66:18]
              skip
            else :
              node _T_40 = eq(UInt<2>("h3"), opcode) @[Conditional.scala 37:30]
              when _T_40 : @[Conditional.scala 39:67]
                node _T_41 = bits(io.instruction, 31, 20) @[helpers.scala 69:31]
                node _T_42 = bits(_T_41, 11, 11) @[helpers.scala 70:36]
                node _T_43 = bits(_T_42, 0, 0) @[Bitwise.scala 72:15]
                node _T_44 = mux(_T_43, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
                node _T_45 = cat(_T_44, _T_41) @[Cat.scala 30:58]
                io.sextImm <= _T_45 @[helpers.scala 70:18]
                skip
              else :
                node _T_46 = eq(UInt<6>("h23"), opcode) @[Conditional.scala 37:30]
                when _T_46 : @[Conditional.scala 39:67]
                  node _T_47 = bits(io.instruction, 31, 25) @[helpers.scala 73:35]
                  node _T_48 = bits(io.instruction, 11, 7) @[helpers.scala 73:59]
                  node _T_49 = cat(_T_47, _T_48) @[Cat.scala 30:58]
                  node _T_50 = bits(_T_49, 11, 11) @[helpers.scala 74:36]
                  node _T_51 = bits(_T_50, 0, 0) @[Bitwise.scala 72:15]
                  node _T_52 = mux(_T_51, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
                  node _T_53 = cat(_T_52, _T_49) @[Cat.scala 30:58]
                  io.sextImm <= _T_53 @[helpers.scala 74:18]
                  skip
                else :
                  node _T_54 = eq(UInt<5>("h13"), opcode) @[Conditional.scala 37:30]
                  when _T_54 : @[Conditional.scala 39:67]
                    node _T_55 = bits(io.instruction, 31, 20) @[helpers.scala 77:31]
                    node _T_56 = bits(_T_55, 11, 11) @[helpers.scala 78:36]
                    node _T_57 = bits(_T_56, 0, 0) @[Bitwise.scala 72:15]
                    node _T_58 = mux(_T_57, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
                    node _T_59 = cat(_T_58, _T_55) @[Cat.scala 30:58]
                    io.sextImm <= _T_59 @[helpers.scala 78:18]
                    skip
                  else :
                    node _T_60 = eq(UInt<7>("h73"), opcode) @[Conditional.scala 37:30]
                    when _T_60 : @[Conditional.scala 39:67]
                      node _T_61 = mux(UInt<1>("h0"), UInt<27>("h7ffffff"), UInt<27>("h0")) @[Bitwise.scala 72:12]
                      node _T_62 = bits(io.instruction, 19, 15) @[helpers.scala 81:53]
                      node _T_63 = cat(_T_61, _T_62) @[Cat.scala 30:58]
                      io.sextImm <= _T_63 @[helpers.scala 81:18]
                      skip


  module SingleCycleCPU :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip imem : { flip address : UInt<32>, flip valid : UInt<1>, good : UInt<1>, instruction : UInt<32>, ready : UInt<1>}, flip dmem : { flip address : UInt<32>, flip valid : UInt<1>, good : UInt<1>, flip writedata : UInt<32>, flip memread : UInt<1>, flip memwrite : UInt<1>, flip maskmode : UInt<2>, flip sext : UInt<1>, readdata : UInt<32>}}

    reg pc : UInt, clock with :
      reset => (reset, UInt<1>("h0")) @[cpu.scala 17:37]
    inst control of Control @[cpu.scala 18:26]
    control.clock <= clock
    control.reset <= reset
    inst registers of RegisterFile @[cpu.scala 19:26]
    registers.clock <= clock
    registers.reset <= reset
    inst aluControl of ALUControl @[cpu.scala 20:26]
    aluControl.clock <= clock
    aluControl.reset <= reset
    inst alu of ALU @[cpu.scala 21:26]
    alu.clock <= clock
    alu.reset <= reset
    inst immGen of ImmediateGenerator @[cpu.scala 22:26]
    immGen.clock <= clock
    immGen.reset <= reset
    inst nextpc of NextPC @[cpu.scala 23:26]
    nextpc.clock <= clock
    nextpc.reset <= reset
    reg value : UInt<30>, clock with :
      reset => (reset, UInt<30>("h0")) @[Counter.scala 29:33]
    wire _T : UInt<1>
    _T <= UInt<1>("h0")
    when UInt<1>("h1") : @[Counter.scala 67:17]
      node _T_1 = eq(value, UInt<30>("h3fffffff")) @[Counter.scala 38:24]
      node _T_2 = add(value, UInt<1>("h1")) @[Counter.scala 39:22]
      node _T_3 = tail(_T_2, 1) @[Counter.scala 39:22]
      value <= _T_3 @[Counter.scala 39:13]
      _T <= _T_1 @[Counter.scala 67:24]
      skip
    io.imem.address <= pc @[cpu.scala 27:19]
    io.imem.valid <= UInt<1>("h1") @[cpu.scala 28:17]
    node opcode = bits(io.imem.instruction, 6, 0) @[cpu.scala 31:27]
    control.io.opcode <= opcode @[cpu.scala 34:21]
    node _T_4 = bits(io.imem.instruction, 19, 15) @[cpu.scala 36:39]
    registers.io.readreg1 <= _T_4 @[cpu.scala 36:25]
    node _T_5 = bits(io.imem.instruction, 24, 20) @[cpu.scala 37:39]
    registers.io.readreg2 <= _T_5 @[cpu.scala 37:25]
    node _T_6 = bits(io.imem.instruction, 11, 7) @[cpu.scala 39:39]
    registers.io.writereg <= _T_6 @[cpu.scala 39:25]
    node _T_7 = neq(registers.io.writereg, UInt<1>("h0")) @[cpu.scala 40:76]
    node _T_8 = and(control.io.regwrite, _T_7) @[cpu.scala 40:50]
    registers.io.wen <= _T_8 @[cpu.scala 40:25]
    immGen.io.instruction <= io.imem.instruction @[cpu.scala 42:25]
    aluControl.io.aluop <= control.io.aluop @[cpu.scala 46:24]
    aluControl.io.itype <= control.io.itype @[cpu.scala 47:24]
    node _T_9 = bits(io.imem.instruction, 31, 25) @[cpu.scala 48:38]
    aluControl.io.funct7 <= _T_9 @[cpu.scala 48:24]
    node _T_10 = bits(io.imem.instruction, 14, 12) @[cpu.scala 49:38]
    aluControl.io.funct3 <= _T_10 @[cpu.scala 49:24]
    alu.io.operation <= aluControl.io.operation @[cpu.scala 51:20]
    when control.io.xsrc : @[cpu.scala 53:26]
      alu.io.inputx <= pc @[cpu.scala 54:19]
      skip
    else :
      alu.io.inputx <= registers.io.readdata1 @[cpu.scala 56:19]
      skip
    when control.io.plus4 : @[cpu.scala 59:27]
      alu.io.inputy <= UInt<3>("h4") @[cpu.scala 60:21]
      skip
    else :
      when control.io.ysrc : @[cpu.scala 62:28]
        alu.io.inputy <= immGen.io.sextImm @[cpu.scala 63:21]
        skip
      else :
        alu.io.inputy <= registers.io.readdata2 @[cpu.scala 65:21]
        skip
      skip
    nextpc.io.branch <= control.io.branch @[cpu.scala 69:20]
    nextpc.io.jal <= control.io.jal @[cpu.scala 70:20]
    nextpc.io.jalr <= control.io.jalr @[cpu.scala 71:20]
    nextpc.io.inputx <= registers.io.readdata1 @[cpu.scala 72:20]
    nextpc.io.inputy <= registers.io.readdata2 @[cpu.scala 73:20]
    node _T_11 = bits(io.imem.instruction, 14, 12) @[cpu.scala 74:34]
    nextpc.io.funct3 <= _T_11 @[cpu.scala 74:20]
    nextpc.io.pc <= pc @[cpu.scala 75:20]
    nextpc.io.imm <= immGen.io.sextImm @[cpu.scala 76:20]
    wire result : UInt @[cpu.scala 78:20]
    when control.io.resultselect : @[cpu.scala 79:34]
      result <= immGen.io.sextImm @[cpu.scala 80:12]
      skip
    else :
      result <= alu.io.result @[cpu.scala 82:12]
      skip
    io.dmem.address <= alu.io.result @[cpu.scala 86:21]
    io.dmem.writedata <= registers.io.readdata2 @[cpu.scala 87:21]
    node _T_12 = eq(control.io.memop, UInt<2>("h2")) @[cpu.scala 88:41]
    io.dmem.memread <= _T_12 @[cpu.scala 88:21]
    node _T_13 = eq(control.io.memop, UInt<2>("h3")) @[cpu.scala 89:41]
    io.dmem.memwrite <= _T_13 @[cpu.scala 89:21]
    node _T_14 = bits(io.imem.instruction, 13, 12) @[cpu.scala 90:35]
    io.dmem.maskmode <= _T_14 @[cpu.scala 90:21]
    node _T_15 = bits(io.imem.instruction, 14, 14) @[cpu.scala 91:36]
    node _T_16 = not(_T_15) @[cpu.scala 91:24]
    io.dmem.sext <= _T_16 @[cpu.scala 91:21]
    node _T_17 = bits(control.io.memop, 1, 1) @[cpu.scala 92:40]
    io.dmem.valid <= _T_17 @[cpu.scala 92:21]
    when control.io.toreg : @[cpu.scala 95:27]
      registers.io.writedata <= io.dmem.readdata @[cpu.scala 96:28]
      skip
    else :
      registers.io.writedata <= result @[cpu.scala 98:28]
      skip
    pc <= nextpc.io.nextpc @[cpu.scala 101:6]
