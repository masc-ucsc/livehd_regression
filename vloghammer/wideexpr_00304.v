module wideexpr_00304(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = {4{s6}};
  assign y1 = u4;
  assign y2 = -((u7)+((s4)|(u5)));
  assign y3 = $signed($unsigned((u5)>>({2'sb11,(u3)<=(s7),s7})));
  assign y4 = s4;
  assign y5 = {(ctrl[6]?({2{((6'b110001)==(6'sb000001))>=(1'sb1)}})^((~^((u3)>>(s4)))-((ctrl[1]?(ctrl[3]?s5:u7):(ctrl[4]?s6:6'sb100011)))):(ctrl[1]?5'b01000:(({s4,s7})+({u4,s7,u7,3'sb101}))<=(1'b0))),3'sb000,4'b0111,(s0)>(4'sb1111)};
  assign y6 = (ctrl[4]?+($signed((ctrl[1]?s4:$signed(s5)))):6'sb110110);
  assign y7 = {(((s6)<<((-(6'sb010010))&((1'sb0)|($signed((ctrl[1]?u5:5'b11010))))))+(((+(s1))|((((4'sb0010)+(s6))<<((3'sb111)<<<(s2)))&($signed(s6))))-(6'sb010010)))>>>(|($signed({3{{3{+((s0)<<(u7))}}}}))),s7};
endmodule
