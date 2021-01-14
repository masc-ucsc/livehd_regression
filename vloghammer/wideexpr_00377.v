module wideexpr_00377(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = -(-($signed(({-(s5)})<<<(4'b0001))));
  assign y1 = ((ctrl[2]?((ctrl[5]?(s1)+(s4):(6'sb000000)<<<(s7)))<<(u3):(ctrl[1]?+((s0)&(2'sb10)):(ctrl[3]?$signed(s7):(s5)>>(s4)))))>>>({3{2'sb10}});
  assign y2 = {4{(1'sb0)>>>(s4)}};
  assign y3 = $unsigned((ctrl[0]?(ctrl[1]?(6'sb011010)^~(s3):((ctrl[0]?4'sb1011:$signed((6'sb010011)>>>(s7))))&((((3'sb111)|(3'sb011))<<<((3'b010)<<<(s4)))+((s6)>>>(u1)))):(ctrl[3]?(ctrl[7]?s6:-(($signed(s7))+((s1)<<<(s2)))):+(((ctrl[5]?(u6)&(s2):(1'sb0)<(s6)))>>>(s1)))));
  assign y4 = (ctrl[1]?(&((ctrl[4]?{4{{u1}}}:+((ctrl[5]?u3:6'b111000)))))+(~&(s0)):$unsigned((ctrl[3]?-(-(s3)):(-((5'sb00000)>=(4'sb1000)))|(5'sb00000))));
  assign y5 = $signed($signed($signed(5'b01001)));
  assign y6 = (ctrl[7]?(({1{((4'b0010)>>((u4)<<<(((ctrl[3]?1'sb0:1'b0))<<<($signed(s2)))))>>>({{{(1'sb0)>>>(s1),(ctrl[5]?s6:s1),(2'b10)|(3'b100),5'b01011}},{{3{4'sb1001}},{(ctrl[2]?4'sb0011:3'sb110),(u5)==(s1)}},(3'sb010)>(s7),{3{2'sb10}}})}})+(s7))>>(-(1'sb0)):5'sb01000);
  assign y7 = (6'sb010010)>>((ctrl[0]?{4{-(2'b10)}}:u0));
endmodule
