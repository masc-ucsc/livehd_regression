module wideexpr_00896(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((u7)&((s7)==(-(((ctrl[2]?(5'sb10010)-(6'sb101000):-(1'b1)))<<<($signed({s4}))))))>>(-(!(4'b1100)));
  assign y1 = $signed(+(2'sb01));
  assign y2 = {1{$signed(+(s5))}};
  assign y3 = {1{4'sb0111}};
  assign y4 = $unsigned(s5);
  assign y5 = 3'sb010;
  assign y6 = (($signed(6'sb101000))>>>((ctrl[7]?5'sb00111:{{4{{$signed($signed(s2)),((s5)|(s7))+(4'sb1101)}}}})))==(((ctrl[1]?$signed($signed($signed($signed((u2)+(s0))))):$signed($signed(6'sb110001))))&(+((s4)<=((($signed(-(s4)))^~((ctrl[1]?(s6)&(2'sb11):$signed(3'sb000))))^~((ctrl[7]?(ctrl[3]?(s1)<<(6'sb001101):(s6)^~(3'sb011)):$signed((u3)<<(s5))))))));
  assign y7 = (((1'sb1)+($signed(+({2{(+(u4))<<(s3)}}))))+(6'sb000100))>>((-(u3))>>({1{(s6)<((s6)>>>(+(((6'b001111)+(s2))^~((3'sb000)>>>(5'sb10100)))))}}));
endmodule
