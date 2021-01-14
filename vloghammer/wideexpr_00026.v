module wideexpr_00026(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = {2'b00,{(+((~|({4{$unsigned(2'sb01)}}))>>>((ctrl[6]?s2:(ctrl[5]?-(5'sb01010):+(s0))))))>>({{3{{s4,{+(u1),(ctrl[6]?3'sb111:s6)},6'b111011,((ctrl[4]?u0:6'b011100))^((s2)^~(3'b110))}}},5'sb01110,(((+(s0))+(-(6'sb011101)))<<<(((6'b111000)>(3'sb010))>=((s4)==(2'sb01))))^~((3'sb111)>>>(5'sb11101))}),(4'sb0010)^(4'sb1100)},1'sb1,s1};
  assign y1 = u3;
  assign y2 = 1'sb1;
  assign y3 = (3'sb011)-(s4);
  assign y4 = ({u7})&($signed((ctrl[4]?{1{u7}}:(s5)<=((1'sb0)<<({{4{6'sb011100}},(6'sb000101)>(s2)})))));
  assign y5 = |(-(1'b1));
  assign y6 = $signed(4'b1001);
  assign y7 = (ctrl[3]?(ctrl[0]?-(~&(s1)):1'sb1):s2);
endmodule
