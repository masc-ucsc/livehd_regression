module wideexpr_00102(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[4]?3'sb001:((ctrl[7]?s7:$signed(s0)))|(+(({1{(-(u4))|((6'sb111110)>>>(s3))}})>>>((((ctrl[7]?3'sb111:6'sb100101))<<<((u4)>>(u4)))>>($signed(s1))))));
  assign y1 = +(((s7)+(s6))-(-(^((ctrl[1]?(ctrl[7]?(ctrl[3]?(ctrl[7]?s5:u7):(ctrl[1]?u4:4'sb0010)):((ctrl[4]?4'sb0001:5'b01111))&((4'sb0001)==(u1))):(-(1'b1))>(s0))))));
  assign y2 = 6'sb101111;
  assign y3 = s6;
  assign y4 = (($signed(($signed(($unsigned(s6))-((u7)+(4'b0110))))^(1'sb1)))|($signed(((({1{s0}})>=(+(6'b100110)))>>>(2'sb11))^~(((s3)>((u6)^(3'b001)))<<<($unsigned((s0)>>(4'b1001)))))))>(s7);
  assign y5 = {2{{3{3'b010}}}};
  assign y6 = (({2{&((s4)>>>((ctrl[6]?{(-(3'b001))-(+(5'sb11111)),+((s7)<<(u2)),u0,1'sb0}:(2'b00)^~({3{(s1)+(6'b000010)}}))))}})<<<($signed((((1'sb0)^~(1'sb1))<<({-(s1)}))<<(~(s1)))))>>>((s7)+($signed(s6)));
  assign y7 = -($signed(~&(((!(+(3'sb000)))<<<((ctrl[3]?s0:~(s3))))|($unsigned($signed((s6)>=(s0)))))));
endmodule
