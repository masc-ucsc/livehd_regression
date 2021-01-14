module wideexpr_00953(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
  input [7:0] ctrl;
  input [0:0] u0;
  input [1:0] u1;
  input [2:0] u2;
  input [3:0] u3;
  input [4:0] u4;
  input [5:0] u5;
  input [6:0] u6;
  input [7:0] u7;
  input signed [0:0] s0;
  input signed [1:0] s1;
  input signed [2:0] s2;
  input signed [3:0] s3;
  input signed [4:0] s4;
  input signed [5:0] s5;
  input signed [6:0] s6;
  input signed [7:0] s7;
  output [127:0] y;
  wire [15:0] y0;
  wire [15:0] y1;
  wire [15:0] y2;
  wire [15:0] y3;
  wire [15:0] y4;
  wire [15:0] y5;
  wire [15:0] y6;
  wire [15:0] y7;
  assign y = {y0,y1,y2,y3,y4,y5,y6,y7};
  assign y0 = 5'sb01001;
  assign y1 = (ctrl[1]?$signed($signed(s7)):{4{$signed($unsigned(3'sb111))}});
  assign y2 = -(((ctrl[6]?$signed((((ctrl[6]?3'sb011:u3))>>>(3'b000))>>>(s1)):6'sb000101))>>>(s7));
  assign y3 = u2;
  assign y4 = (6'sb001100)^(2'sb11);
  assign y5 = -((s7)<<((3'sb111)+($signed((((ctrl[4]?(6'sb010101)<<<(s1):s4))<<({2{$signed((ctrl[5]?s4:s3))}}))<<<((ctrl[0]?s7:(-((5'sb11111)!=(s0)))<<(+(3'sb111))))))));
  assign y6 = ($signed((($signed(6'sb001001))<<((s6)==(s6)))<<<((ctrl[2]?(ctrl[0]?6'sb100111:s4):s0))))^~({3{{3{(ctrl[0]?+(3'b000):(ctrl[7]?s0:s4))}}}});
  assign y7 = +({(1'sb0)^(((s4)<<($signed(1'sb0)))^((ctrl[2]?6'sb010101:5'sb11010))),s6,((({2'sb01,s4})<<<((2'sb11)^~(u4)))^~(s1))|(1'sb1),6'sb010001});
endmodule
