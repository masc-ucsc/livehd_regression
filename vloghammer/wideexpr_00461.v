module wideexpr_00461(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = u5;
  assign y1 = (|(($signed(s5))>>>((^((((5'sb00001)>>>(u1))^~($signed(s5)))-(3'sb000)))>>($signed((ctrl[4]?{$signed(5'sb01111),(u6)-(2'sb01),$signed(1'sb1)}:((s3)&(u3))>=($signed(u0))))))))+({3{s0}});
  assign y2 = 1'sb1;
  assign y3 = s1;
  assign y4 = (ctrl[2]?(ctrl[1]?6'sb110100:s2):-((ctrl[4]?2'sb10:({3{(1'sb0)<<<(2'b00)}})+(3'b001))));
  assign y5 = -((ctrl[2]?{$unsigned($signed(s5))}:{$unsigned(((6'sb010011)<<<(s0))-((6'sb100001)^~(s6))),-(((s1)<<<(s5))<<<((ctrl[0]?4'sb1110:1'sb0)))}));
  assign y6 = ((((ctrl[4]?s1:+(3'sb001)))^~(-((s1)+(u3))))<<((ctrl[5]?((4'sb1000)+(s0))^~($signed(s1)):s1)))&(((ctrl[6]?1'sb0:$signed((s1)>>(s1))))<<<(s2));
  assign y7 = {5'sb01010,+(u4),(-(((s6)>=(-(+(s7))))^({1{-(s6)}})))+((((ctrl[4]?s1:(3'sb100)&(s3)))>>>(3'sb011))<<<(($signed(s5))>>(s5)))};
endmodule
