module wideexpr_00391(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 4'sb0001;
  assign y1 = u4;
  assign y2 = s0;
  assign y3 = {$signed(1'sb1)};
  assign y4 = (6'sb110110)>>({{1{s6}},(($signed((4'sb0000)<<<(3'sb001)))^((u1)-({s6})))<(((!(s7))<<<((u0)>>>(3'b011)))|(4'sb1100)),u6,(($unsigned({3'sb010,s0,6'sb011011}))==({3{(s6)<<<(5'sb10110)}}))==((ctrl[4]?5'b00101:(ctrl[0]?{4{u7}}:s5)))});
  assign y5 = $signed((((1'sb0)>>>(4'sb1011))!=((ctrl[2]?(ctrl[7]?6'sb001101:($signed(2'sb01))^(s2)):4'sb1010)))&(~^(3'b011)));
  assign y6 = {2'sb11};
  assign y7 = (ctrl[4]?((ctrl[0]?{3{(ctrl[7]?+(~^(s3)):(ctrl[6]?(2'sb00)<<(6'sb000101):(1'sb0)^~(s7)))}}:({2{((s2)>>>(1'sb1))<<(u1)}})+($signed((u1)<=((u2)!=(s3))))))+((s0)<(+((ctrl[4]?$unsigned({s6,4'sb0011,6'sb111001}):({s6,5'sb11001})>($unsigned(s4)))))):5'b00110);
endmodule
