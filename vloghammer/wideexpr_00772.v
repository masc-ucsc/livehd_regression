module wideexpr_00772(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = $signed(($unsigned({2'sb00,((ctrl[5]?u7:s7))<<(s2),-((6'sb010001)^(s3)),s1}))^~(1'sb0));
  assign y1 = s5;
  assign y2 = 6'sb000111;
  assign y3 = (ctrl[4]?{1{$unsigned(+(5'sb11100))}}:~|(~^($signed(({4{(ctrl[4]?5'sb01000:6'sb100000)}})>>(4'sb0010)))));
  assign y4 = 4'sb0011;
  assign y5 = $unsigned(+({1{-(-(3'sb101))}}));
  assign y6 = {1{(ctrl[7]?$signed((u0)^~($unsigned(s4))):(ctrl[3]?+((s2)<<(u6)):(s2)>>(5'sb11110)))}};
  assign y7 = ((s4)^(-((ctrl[4]?$signed(5'sb10110):((s5)<<<(s7))+((ctrl[7]?u2:u3))))))>>($signed($signed((((3'sb100)-(s7))^~((ctrl[4]?5'sb01100:5'sb01000)))<<<(s7))));
endmodule
