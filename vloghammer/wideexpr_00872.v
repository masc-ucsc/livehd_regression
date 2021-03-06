module wideexpr_00872(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s5;
  assign y1 = s6;
  assign y2 = {{1{s5}},$unsigned($signed(~|(s2))),$signed(((~^((s6)+(+(2'sb00))))^~({((s7)+(5'sb11101))>>((3'sb000)^~(6'sb101001)),+(+(u5)),(-(u2))^~(s1)}))<<((ctrl[0]?(((ctrl[2]?4'sb1001:1'sb0))>>((ctrl[0]?3'sb011:s6)))^(6'sb100001):-(5'sb00101)))),(-(3'sb110))>>>(2'b01)};
  assign y3 = $signed((4'b1100)<<((&({s7,$signed((ctrl[6]?s5:5'sb01111)),(ctrl[3]?(u4)+(1'b0):{1{u4}}),$signed((s2)|(s1))}))!=(s2)));
  assign y4 = (u1)-((3'b011)^({3{$signed((6'sb000110)+(s2))}}));
  assign y5 = $signed($signed({2'sb11,s4,$unsigned(-(-((ctrl[5]?$signed(1'sb1):s1))))}));
  assign y6 = ~^(+({(ctrl[1]?$signed(((-(-(s7)))>>({4{$signed(1'b1)}}))|($signed((1'sb1)<((3'sb010)&(s3))))):+(1'sb1)),$signed(((ctrl[5]?((ctrl[0]?$signed(s0):2'sb00))>>({s4}):2'sb10))==(((s6)<<(+({1{1'b1}})))+(s4))),(ctrl[3]?2'b11:1'sb1),1'sb0}));
  assign y7 = {2'sb10,(($signed(+(2'sb11)))<(((s0)<<(s7))^~($signed(4'sb1001))))<<<(-($signed((s5)!=(4'sb1110)))),($signed(((s5)>>>(3'b100))^~(5'sb10010)))>>((u4)<<<(s1))};
endmodule
