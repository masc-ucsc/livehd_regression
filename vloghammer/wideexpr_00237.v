module wideexpr_00237(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[1]?(-({s1,+(2'sb00)}))<<(+({1{s6}})):$signed(-(((((($signed(5'b01011))>>>((1'sb1)^(5'sb01000)))+(5'sb01100))^(2'sb01))|($signed((5'sb10010)<=({3{$unsigned(u5)}}))))^~((ctrl[2]?2'sb00:(+((2'sb01)-(&(u3))))|(s7))))));
  assign y1 = $signed(({((ctrl[2]?((2'sb10)>>>(2'sb01))-(4'sb0000):2'sb11))^~(6'sb100000),((ctrl[7]?(s1)<=((s7)+(s6)):{3{(s6)-(3'sb101)}}))>>(s5),(s1)<<<((s0)^~((-(s5))<<<((s5)<<(6'b101110)))),$signed({4{$signed((ctrl[4]?2'sb11:2'sb10))}})})>>({4{$signed((~|(6'sb001101))+(({3'b001,s0})<<(s5)))}}));
  assign y2 = 5'sb01110;
  assign y3 = ~^(2'b10);
  assign y4 = s1;
  assign y5 = {4{(($signed(+(|((s1)>>>(s4)))))&((u4)^((((3'sb111)>>(s2))<($signed(s0)))<<<(6'sb100111))))>>($unsigned(($signed((ctrl[6]?(5'sb11001)<<(s4):(1'sb1)<<(1'sb1))))<<(+(((ctrl[2]?s4:s2))<<(-(s5))))))}};
  assign y6 = 2'sb01;
  assign y7 = 6'sb010111;
endmodule
