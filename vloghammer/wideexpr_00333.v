module wideexpr_00333(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = $signed(s2);
  assign y1 = 5'sb01111;
  assign y2 = {{4{({u6,(s6)<=(+({6'sb111000})),+(s6),(s5)<<<(u4)})>>(5'sb00100)}},2'sb11,{(ctrl[1]?(ctrl[1]?$signed((ctrl[1]?6'sb001010:s5)):{2{(ctrl[2]?s3:(($signed(2'sb10))<<<((3'b000)&(2'b11)))|(s3))}}):(ctrl[1]?({3{(5'sb00000)>>(u3)}})+({3{{3'sb100,(ctrl[7]?{1{u7}}:s4)}}}):{3{$signed(($signed(3'sb001))|(s5))}})),&(2'sb10),$signed((ctrl[6]?s7:4'sb0101)),s2},$signed(s6)};
  assign y3 = $unsigned(s2);
  assign y4 = 3'b011;
  assign y5 = (ctrl[7]?s4:((ctrl[4]?(((ctrl[4]?((ctrl[2]?s5:2'sb00))^((6'sb101111)>>>(4'sb0001)):+((s6)^~(6'sb111100))))<<({~(&(s1)),1'sb1,{-(s5)}}))-(-((ctrl[1]?{1{(s1)>>>(s5)}}:{1{(ctrl[7]?s0:6'sb011011)}}))):(ctrl[7]?$signed(1'sb0):s0)))<=(s1));
  assign y6 = ($signed($signed(((-(s2))|((ctrl[7]?3'sb100:6'sb000111)))>>({3{{s7,4'b0011}}}))))+(-((ctrl[4]?{4{(6'sb001011)<<<(+(u2))}}:s6)));
  assign y7 = 3'sb100;
endmodule
