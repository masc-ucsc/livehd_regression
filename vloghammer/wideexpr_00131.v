module wideexpr_00131(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (((($signed(2'sb00))>>>({{((5'sb00011)|($signed(4'sb0000)))-(s0)},(ctrl[2]?u0:~|(u0)),u3,u5}))<(-(+((+(s3))>>(+({2{s1}}))))))>>>(u7))>($unsigned(($unsigned(&((5'sb01000)>>(5'sb01000))))&({$unsigned(~^((ctrl[5]?((ctrl[1]?s7:4'sb1101))>>>((6'sb111001)<<(s4)):(ctrl[2]?1'sb0:-(2'b11))))),s2,s4,{{(2'sb00)&($signed(6'sb001111))},s0,s5,u5}})));
  assign y1 = (s1)-($signed((ctrl[4]?1'sb0:$unsigned($signed(2'sb00)))));
  assign y2 = ($unsigned((ctrl[2]?s0:+((ctrl[5]?$unsigned(1'sb1):1'sb1)))))^~(((((~|(~|(s5)))<(({4{6'b110000}})<<<((4'sb1010)>>(3'sb011))))|({s1,(ctrl[2]?~|(6'sb001100):5'sb00110)}))<<(5'sb11001))!=(~((-((+(s5))<=((2'sb01)>>>(2'sb00))))^~(u1))));
  assign y3 = (5'b11101)>>(+((5'b10101)>>(-((+(s3))>(3'sb101)))));
  assign y4 = {2{u5}};
  assign y5 = (6'sb011111)|((s2)|(((ctrl[1]?(1'sb0)>>($signed(~|(4'sb1010))):2'sb01))>>(6'sb010010)));
  assign y6 = ({3{(1'sb1)^($signed(^((1'sb1)<(s4))))}})>>((s3)|($signed(s2)));
  assign y7 = -(-(~(s3)));
endmodule
