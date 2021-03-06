module wideexpr_00135(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = {({1{4'sb0001}})-({1{({3'sb010})^~(({3'b001,{3'b100,s0,4'sb0011},6'sb011000})^(2'b10))}}),s5};
  assign y1 = (s7)>>((5'b10100)|((s1)<<<((+((ctrl[3]?s3:$signed(s6))))|(($signed((ctrl[6]?u7:5'b10001)))^(6'sb101100)))));
  assign y2 = -(s2);
  assign y3 = (3'b011)^~({(ctrl[5]?{{(~(3'sb001))>>>(4'sb1000),$signed(2'b10),(($signed(s6))<((ctrl[2]?3'sb001:3'sb001)))>>>((-(6'sb101010))^~((2'sb00)&(s1))),((+(3'sb000))<<<((ctrl[2]?4'sb1110:1'sb0)))<<<({(s3)<<<(s3)})}}:$signed(+($signed(+($unsigned(1'sb1)))))),2'sb11,3'sb010});
  assign y4 = s3;
  assign y5 = $unsigned(s5);
  assign y6 = ((ctrl[3]?($signed($signed(s6)))|($signed((ctrl[3]?4'sb0000:1'sb0))):(((s6)^~(s1))&((ctrl[6]?s3:s5)))>>(((6'sb001100)<<(3'sb111))-(-(s7)))))^~((((ctrl[0]?$signed(s3):3'sb101))<<<(1'sb1))+(2'sb00));
  assign y7 = 2'sb01;
endmodule
