module wideexpr_00918(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = $signed((ctrl[4]?((ctrl[2]?$signed((ctrl[5]?s0:4'sb1101)):+((ctrl[7]?6'sb001100:6'sb100110))))>>>((((3'sb100)<<<(4'sb0000))^(+(s5)))>(-((6'sb010001)>>>(s7)))):-({2{$unsigned((s6)>(3'sb001))}})));
  assign y1 = (ctrl[6]?($signed(4'sb1111))>>>({2{$unsigned(3'sb101)}}):(6'sb001100)<<((u3)-((ctrl[2]?3'b111:$signed(s7)))));
  assign y2 = -(({3{-($signed(5'sb11001))}})!=(((6'sb010001)-({6'b111000,4'b1111,2'b00}))^~(((s5)-(s2))<(-(s7)))));
  assign y3 = -($unsigned(3'sb101));
  assign y4 = $signed($unsigned(($signed({1{$signed(1'sb0)}}))-(4'sb0111)));
  assign y5 = 6'sb101101;
  assign y6 = ~&(+(+({5'sb10110,(({3{5'sb11011}})==({3{s4}}))>=(1'b0),({2{s4}})==((3'sb101)>(s5)),(2'b10)+(5'sb01011)})));
  assign y7 = s4;
endmodule
