module wideexpr_00991(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[6]?{((s6)!=((6'sb100011)<<<(s2)))<(2'b11)}:|((ctrl[0]?{(s3)>>>(s1)}:({3{s5}})<<({3{s3}}))));
  assign y1 = $signed(3'sb101);
  assign y2 = {4{s1}};
  assign y3 = 4'sb0000;
  assign y4 = {s6,$signed((1'sb0)<<<(-($signed(6'sb001010)))),$signed((5'sb10101)>>>(($signed(1'sb1))>>>(-(s3))))};
  assign y5 = -(((ctrl[3]?(&((ctrl[4]?4'sb1111:(+(6'sb101010))<<((1'sb1)-(s4)))))^~(((ctrl[0]?~((s7)&(s1)):(2'b10)<<((s4)==(1'sb0))))&($signed(+((s0)+(s4))))):($unsigned((ctrl[7]?((ctrl[6]?u0:5'b01001))^($unsigned(s5)):{$signed(4'sb1101),(s2)+(s5)})))>>(((1'sb0)>>>(((s0)+(s1))^~(5'b00001)))>>>((6'sb111000)<=(2'sb00)))))|({3{{2{5'sb11010}}}}));
  assign y6 = {s5};
  assign y7 = s6;
endmodule
