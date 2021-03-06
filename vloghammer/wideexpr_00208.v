module wideexpr_00208(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s1;
  assign y1 = {$unsigned(2'sb10),(3'sb001)<<<($signed((((-(2'sb01))|((1'sb1)<<<(6'sb001111)))-(+(!(s0))))!=($signed((-(5'b10001))-(3'sb100))))),$signed(3'sb010),(ctrl[3]?(&(((5'sb11011)<<<((6'b101000)+(u0)))-(1'sb1)))>>((u2)>=(((u5)>({s6,s3,6'sb100100}))<<(s0))):((($unsigned(6'sb010111))>>>((ctrl[1]?(4'sb1111)^~(s1):(6'sb000001)<<(s5))))<<<((ctrl[7]?1'sb1:(ctrl[7]?{3{6'sb101101}}:$signed(u4)))))<<<(+(((s0)<<<((s3)^(4'sb1000)))<<<(-((ctrl[0]?3'sb001:6'sb000101))))))};
  assign y2 = 1'sb0;
  assign y3 = $signed({2{(ctrl[4]?s5:-(5'sb11111))}});
  assign y4 = ((-((-({1{(5'sb01010)>>(4'sb1100)}}))>>>(~(((5'sb11001)>>(u3))>=((1'sb1)!=(s6))))))<<((5'sb00001)>($signed($unsigned({4{(s5)<(4'sb0000)}})))))<<($signed(s0));
  assign y5 = (ctrl[1]?4'sb0000:(ctrl[0]?$signed({3{(ctrl[5]?u2:s7)}}):-(+((s5)<<<(s0)))));
  assign y6 = (ctrl[1]?s5:s2);
  assign y7 = {~((ctrl[2]?2'b11:{1{5'b01000}})),u4,s2,(u6)<((((~^(u3))|((ctrl[0]?4'b0011:u3)))<<<(4'sb0011))+(({4{{2{u5}}}})>>>(s1)))};
endmodule
