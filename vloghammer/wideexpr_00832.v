module wideexpr_00832(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((+($unsigned(4'b0000)))-((ctrl[0]?-({3'sb111,$signed((s2)<<<(s0))}):s2)))<=(((s7)&(((5'sb01000)+((s5)+($signed(4'sb1101))))<<<(6'sb001111)))-(5'sb10010));
  assign y1 = (+(s6))^~((((+(6'sb001011))<<(+(u5)))+(s3))<<(+(4'sb0100)));
  assign y2 = ((ctrl[5]?s0:-((ctrl[6]?+((ctrl[2]?$signed(|($signed(s7))):(((s7)>>>(s6))-(5'sb10101))>>>(6'sb101111))):(2'sb00)<<({3{(ctrl[4]?$signed((3'b011)<<(1'sb1)):(s6)>>>((5'sb01111)<=(2'sb01)))}})))))>>({4{2'sb00}});
  assign y3 = s4;
  assign y4 = (ctrl[0]?-(~^(($unsigned({4{1'b1}}))>(($signed((~|(~^(u7)))!=($unsigned((ctrl[7]?u4:u0)))))>=((~^($signed((s4)>>(5'sb10000))))<<((ctrl[3]?((2'b00)<<<(s5))>>>(!(1'b1)):!((4'sb1110)^~(s0)))))))):3'sb010);
  assign y5 = (u4)>>>((-((($signed(1'b0))^((ctrl[2]?(ctrl[4]?s1:(s6)^~(s0)):((1'sb1)<<<(u2))^((s3)>>>(s2)))))+(s5)))>>(($signed((+(({s7,2'sb00})>=({1{s7}})))>>({2{($signed(s7))<<<((ctrl[3]?6'sb001011:u7))}})))^~(6'sb111010)));
  assign y6 = $signed(((((s4)|(5'b00101))+({s5,2'b10}))^~(((6'b000001)^~(u2))>({6'sb011111,s7,u2})))^((6'sb110100)<((5'sb10001)!=((ctrl[3]?4'sb0100:6'sb101111)))));
  assign y7 = s0;
endmodule
