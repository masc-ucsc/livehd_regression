module wideexpr_00500(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 2'b01;
  assign y1 = u0;
  assign y2 = (s5)+(3'sb010);
  assign y3 = +(~|(-((u3)>>(2'b01))));
  assign y4 = ({{1{$signed(s4)}},((s7)>>>((ctrl[2]?1'sb1:5'sb00010)))<<<(s7)})>=({(ctrl[1]?$signed((2'sb10)+(5'sb01011)):s5),-(((s7)>>>(2'sb01))<<<((s6)<(2'sb11))),{3{(+(5'sb00111))+((ctrl[1]?4'sb0010:s2))}},s4});
  assign y5 = {1{(6'b110110)+((((s4)<<<(s6))>((1'sb0)^(4'sb1011)))|(~|((2'b11)+(2'b01))))}};
  assign y6 = +({1{1'b0}});
  assign y7 = (ctrl[1]?(s3)==($signed({1{{u6,2'sb00,s3}}})):((($signed(s7))|((4'sb0111)<=(s3)))^~($unsigned((ctrl[6]?1'sb1:s4))))>>(2'sb01));
endmodule
