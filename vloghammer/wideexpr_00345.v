module wideexpr_00345(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = -({2{s0}});
  assign y1 = +($signed(6'sb101010));
  assign y2 = (^((ctrl[0]?u1:{2{(s4)^(s4)}})))<<<($signed($signed(($signed((ctrl[2]?s6:3'sb111)))<<<(&($unsigned((+($unsigned(1'sb1)))&($signed(2'sb10))))))));
  assign y3 = u2;
  assign y4 = 5'b11001;
  assign y5 = (-(-(((((ctrl[4]?s6:s6))^((s5)^(s3)))|(((ctrl[2]?1'sb0:s5))|(s5)))<=(((-(s3))>>>((s2)-(3'sb110)))|(4'sb1111)))))>>(($signed((ctrl[5]?($signed((1'sb1)>>>(s3)))<<<((s2)<<<((2'sb01)&(s5))):1'sb0)))!=(4'sb1101));
  assign y6 = (ctrl[0]?s3:(ctrl[5]?(s0)^~(((s7)+((s3)>>($unsigned(u5))))<<(s3)):-($signed(s0))));
  assign y7 = (ctrl[6]?$signed(((ctrl[3]?(5'sb11111)>>>((ctrl[4]?(5'b01000)|(u2):(1'b0)<<(u5))):((ctrl[7]?$unsigned(s4):{1{u7}}))<(u4)))<=({3{$signed($unsigned(s1))}})):+(s6));
endmodule
