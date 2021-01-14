module wideexpr_00070(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s3;
  assign y1 = 2'b11;
  assign y2 = ((+(+((4'sb1110)>(4'sb0111))))!=((ctrl[0]?((ctrl[6]?3'sb010:4'sb0110))>>(s6):6'sb000100)))>>(3'sb010);
  assign y3 = ({2{(ctrl[1]?($signed(-(4'b0110)))-((6'sb000011)&((4'sb1111)-(6'sb101000))):s4)}})|(~^($signed((ctrl[0]?s1:(ctrl[5]?(s6)==(3'sb011):$signed(s3))))));
  assign y4 = s7;
  assign y5 = s3;
  assign y6 = $unsigned(2'sb11);
  assign y7 = (((ctrl[7]?s5:$signed(($signed($unsigned(s3)))^($signed(~(2'sb00))))))>=(5'sb11010))<((ctrl[2]?(($signed((ctrl[6]?(s4)>(2'sb10):{3{2'sb10}})))|((u0)&((ctrl[2]?s5:(s5)<(4'sb0010)))))^~(((ctrl[6]?$signed((s7)-(2'sb11)):(ctrl[6]?s2:3'sb110)))<=(s1)):{3{s2}}));
endmodule
