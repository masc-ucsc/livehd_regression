module wideexpr_00349(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (~^(s5))|((({4{$signed(!((4'sb0011)<<<(3'sb101)))}})<<<((3'sb111)-(((5'sb11000)+(4'sb0111))>>((ctrl[3]?(3'sb001)<<(2'sb11):-(s4))))))>=((3'b001)-(((ctrl[4]?$signed((4'sb0111)>>>(5'sb01110)):~&({1{s0}})))<<(-(((ctrl[0]?s3:s3))>>>(~^(4'sb1010)))))));
  assign y1 = ({3{~^(((s1)<<<(s6))>>>(s3))}})<<<($unsigned(({$signed(4'sb0101),{1{u2}},(5'sb01001)^(6'sb110000),2'sb01})<<<(((1'b1)&(s3))|((5'b01011)-(2'sb01)))));
  assign y2 = s5;
  assign y3 = (ctrl[4]?(($signed({1{(ctrl[4]?$signed(3'sb000):(5'sb11001)>>>(s0))}}))+(2'sb01))|(5'sb01010):(1'sb0)<<<(($signed((ctrl[5]?{2{-(u6)}}:((s4)>(s1))^((s1)>>>(1'sb0)))))<($signed((($unsigned(6'b010111))^(1'b1))+((ctrl[5]?$signed(s6):(ctrl[5]?1'b1:s7)))))));
  assign y4 = !(s0);
  assign y5 = $signed((({2{{(ctrl[0]?s1:s3),u2}}})>>(((ctrl[2]?(ctrl[2]?$signed(5'sb00011):$signed(s4)):3'sb000))>>(($signed((ctrl[6]?~^(4'sb1111):{4'sb1101,$signed(1'sb1),(s7)<<(u6)})))<<<($signed((ctrl[2]?+(1'sb1):3'b111))))))>>(((-(&((4'sb0111)>>>({1{(ctrl[3]?5'sb00011:s6)}}))))&(+(s7)))>>(u1)));
  assign y6 = {({((ctrl[5]?3'sb011:(ctrl[1]?s7:u0)))^({$signed(1'sb0),{s7,s4}})})>>(+(2'sb01)),2'b01,({1'sb1})+(5'sb01110),{3{s6}}};
  assign y7 = 2'sb01;
endmodule
