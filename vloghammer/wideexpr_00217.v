module wideexpr_00217(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = {3{{1{$signed((+((4'sb0000)>>(s0)))!=(-($signed($signed(s0)))))}}}};
  assign y1 = $signed($unsigned((((ctrl[2]?$unsigned(-(1'sb1)):$unsigned($signed(3'b111))))>((ctrl[6]?((ctrl[2]?4'sb1011:s3))&(1'b1):((ctrl[2]?6'sb011001:2'sb00))>($signed(s1)))))-({((u2)&($unsigned(4'sb0001)))-(({4'sb1000,5'sb01000,4'sb1110})+((ctrl[6]?u3:2'b01)))})));
  assign y2 = (ctrl[1]?$signed(3'sb100):+((u5)<<(+({5'sb00011,1'b0,s5}))));
  assign y3 = {5'b00000,(ctrl[3]?(1'sb0)>>($signed(({3{3'b001}})<<(3'sb100))):s7),(ctrl[1]?~^(-(!({^(6'b110100),(s2)>>(1'sb1),2'sb10}))):((((ctrl[7]?(5'sb01000)^~(4'sb0111):-(s5)))^~(-(1'sb1)))|(-({6'sb110111,{2'sb11}})))>=((+(((s0)<<(u2))-((1'sb1)&(s6))))>>>(({4{(s7)>>>(2'sb00)}})^~((+(1'b1))<=(1'sb0))))),s4};
  assign y4 = ($signed(6'sb100110))^((6'sb111111)>>>({+(~((-(5'b01011))<=((s2)&(s0)))),6'sb000000,s5}));
  assign y5 = s2;
  assign y6 = ($signed((ctrl[3]?-((ctrl[0]?($signed({1{6'sb001001}}))>>>((s0)>>((ctrl[7]?+(s2):s6))):((+((4'sb0001)>>(1'b0)))-(+((6'b111010)^(6'sb101010))))>>>(u0))):1'sb0)))>>>(4'sb1110);
  assign y7 = $signed(~(({2{((5'sb11111)+(3'sb001))!=((s5)>>>(s7))}})<<<((((4'sb0111)<<(s4))>>((s7)-(2'sb11)))+(($unsigned(1'sb0))&({1'sb1,2'sb10})))));
endmodule
