module wideexpr_00192(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s2;
  assign y1 = 6'sb110110;
  assign y2 = ((ctrl[6]?((-(s3))+((s6)<<(6'sb111111)))+($signed((ctrl[0]?4'b0101:s5))):+((ctrl[5]?{1{s5}}:|(s4)))))>>((ctrl[4]?($signed(6'sb101111))-((ctrl[2]?3'sb100:(s3)>>(6'sb110110))):($signed(|(1'b1)))<<({$signed(6'sb110010),(ctrl[1]?u6:3'sb001)})));
  assign y3 = ~&(((s2)^((ctrl[3]?s0:(s3)^~(5'sb00000))))>>>((((ctrl[4]?s4:s1))>>(-(4'b0011)))>>((ctrl[6]?(ctrl[2]?s7:s6):2'sb01))));
  assign y4 = (({4{({2{4'sb0100}})-(u1)}})^(^(s1)))<<((ctrl[6]?(s0)&(s4):((s3)^~((2'sb00)<<(u7)))-(+(s4))));
  assign y5 = ($signed((ctrl[4]?((s7)<<<(s7))<<<(1'sb1):-({u0}))))!=(((s6)<<<({~(s3),+(u6)}))&(-(1'sb1)));
  assign y6 = ($signed((3'sb100)^(2'sb10)))-(s3);
  assign y7 = ((ctrl[2]?(+(s4))>>>((ctrl[6]?(s6)<<<(1'sb1):(1'sb1)<(5'sb10010))):(ctrl[7]?(ctrl[0]?(2'sb00)+(s2):+(u7)):$signed((ctrl[5]?4'sb0001:s0)))))>>(((u0)<({2{{3{s7}}}}))<=(({3{(ctrl[2]?s0:6'sb000000)}})<<($signed((ctrl[2]?s5:3'b010)))));
endmodule
