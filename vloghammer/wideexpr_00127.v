module wideexpr_00127(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[6]?{2{s2}}:1'sb0);
  assign y1 = s2;
  assign y2 = s6;
  assign y3 = 6'b010110;
  assign y4 = ((ctrl[5]?(-((ctrl[4]?5'sb11001:s7)))<<({4'sb1111,{1{s3}}}):3'sb000))-(s3);
  assign y5 = (ctrl[2]?{3{$signed({$signed((s6)<<(u4))})}}:{((ctrl[4]?(ctrl[4]?3'sb010:s3):((ctrl[7]?s5:1'sb0))>>>(s5)))+($signed(s6)),~^(6'sb111111),$signed($unsigned(u3))});
  assign y6 = (ctrl[4]?$signed(((ctrl[7]?($signed(3'sb011))-(5'sb11100):$signed({2{$signed(s3)}})))<=((1'sb0)>>((({3{u6}})<<((1'sb1)^(2'sb01)))|(3'sb110)))):(ctrl[6]?s7:1'sb0));
  assign y7 = {1{(2'sb11)>>>((6'sb010100)-(+(((2'sb11)+((s5)>>((u5)<=(3'b011))))^($signed(4'b1100)))))}};
endmodule
