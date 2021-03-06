module wideexpr_00589(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = u1;
  assign y1 = -($signed(s7));
  assign y2 = (2'b11)<=(s1);
  assign y3 = 3'sb111;
  assign y4 = {(-(-(($signed(((s7)-(4'sb1010))^~(-(6'sb011001))))&(4'sb0001))))<=(+($signed($unsigned({4{{2{$signed(5'sb11011)}}}})))),-((ctrl[2]?$signed(+($signed((ctrl[6]?5'sb10111:1'sb1)))):1'sb1)),(ctrl[5]?$signed({4{(ctrl[2]?3'sb011:$signed($signed((s4)>>>(s7))))}}):$signed(3'sb111)),4'sb1100};
  assign y5 = (ctrl[1]?s1:($signed(5'sb01010))>=(s7));
  assign y6 = -($signed((ctrl[0]?(|((6'sb101101)-(s2)))>>(~^((ctrl[7]?u7:s0))):(((s2)^(s2))|({1{4'sb0010}}))&((ctrl[7]?{s0,1'sb1,s5}:(s6)<=(s3))))));
  assign y7 = (($signed(6'sb111101))<<<({2{s6}}))>>($unsigned(5'sb10100));
endmodule
