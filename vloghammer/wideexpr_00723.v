module wideexpr_00723(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 2'sb10;
  assign y1 = +((s4)+(((ctrl[0]?((ctrl[7]?u4:u1))^~(2'sb10):u7))^~({(s2)|((1'sb1)<<<(6'sb010110))})));
  assign y2 = ((ctrl[3]?(ctrl[3]?u1:u4):(ctrl[5]?s4:$signed(5'sb01011))))+({4{s4}});
  assign y3 = (u7)-(($unsigned({2{{(s2)>>>(4'sb1011),5'sb11101}}}))<<<($unsigned($signed({3{s3}}))));
  assign y4 = (ctrl[4]?4'sb1011:((ctrl[7]?3'sb011:(ctrl[7]?3'sb000:$signed(s4))))-((ctrl[2]?(ctrl[4]?s5:6'sb111111):$signed({3{(u6)<<(6'sb110000)}}))));
  assign y5 = ((({$signed($signed({3'sb110,s6})),s7,((ctrl[0]?1'sb1:+(2'b10)))-(4'sb0111),(2'sb01)|(4'sb0101)})|({3{4'sb1001}}))<<(((ctrl[5]?(ctrl[0]?+(2'sb00):$signed(1'b0)):(ctrl[5]?4'sb0110:s7)))>>(5'b01100)))+(s5);
  assign y6 = u4;
  assign y7 = s2;
endmodule
