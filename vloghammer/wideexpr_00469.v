module wideexpr_00469(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((+((ctrl[7]?({3{{(ctrl[1]?4'sb0110:$signed(u0)),({s0,s4,1'sb1})>>((u0)>>(5'sb11001)),(ctrl[3]?(5'sb10110)^(s3):(ctrl[7]?4'sb0111:5'sb10010)),u6}}})|(^(s3)):4'sb0110)))^~((s7)<<(s1)))<<<(4'sb1010);
  assign y1 = 4'b0101;
  assign y2 = s5;
  assign y3 = ({$signed((ctrl[0]?2'sb11:($signed({4{(s0)<=(6'sb101110)}}))>>>(($signed(s0))-(((s2)|(3'sb001))<<((3'sb011)+(s3)))))),+((3'sb001)<<<($unsigned({((2'b01)<=(s5))&(|(3'b111)),s1,$signed((s3)!=(4'b0001))}))),{3'sb100,(-(s3))>(-(s0)),-((4'sb0101)&(6'sb111001)),(ctrl[0]?s0:5'sb01011)},|(({(4'b1001)|({(5'sb11001)^(s5),{2{u5}}}),{2{($signed(5'sb01000))|((3'sb110)<<(s3))}},(ctrl[7]?(ctrl[7]?(ctrl[3]?5'sb11111:s7):3'sb111):((4'sb0000)>>(s5))>>(s7))})>>(4'sb0001))})>>(-(s5));
  assign y4 = u5;
  assign y5 = (-({1{(u5)<(($signed(|({2{{3'sb011,s1,6'sb100100,s6}}})))|(-((5'b01110)&({(ctrl[5]?u6:u0),(u1)!=(s2)}))))}}))>>>((ctrl[0]?($unsigned(({4{$signed(3'sb110)}})<<<(($signed(((1'b1)<<<(4'b1111))<=((3'b010)|(u0))))>>((s4)-(s7)))))-(~|(1'b0)):$signed((ctrl[5]?($signed((ctrl[2]?((4'sb0100)<<(1'sb1))<<((ctrl[4]?u3:5'sb11001)):|((u4)^~(2'b00)))))>>(2'sb00):-(($signed(($signed(u4))>((ctrl[5]?s6:s0))))+($signed($signed(2'b11))))))));
  assign y6 = s6;
  assign y7 = -((ctrl[1]?(ctrl[3]?({+(s5),$signed(3'sb000)})>>(-(2'sb01)):($unsigned(1'sb1))>>((ctrl[0]?{1{6'sb010100}}:$unsigned(6'b110010)))):(!($signed({1'sb0,s5,5'sb10000,u7})))>>(s7)));
endmodule
