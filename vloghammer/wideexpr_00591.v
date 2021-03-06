module wideexpr_00591(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (u3)-($unsigned((1'b1)==({1'sb1,{3{~|((ctrl[5]?5'b00110:((ctrl[0]?4'b0110:2'b00))|(2'sb10)))}},({2{((s1)>>>((ctrl[3]?6'sb111101:2'sb00)))>>>((ctrl[3]?$signed(s5):u7))}})<<(s6),((3'sb101)<<((2'sb00)<<(2'sb10)))-(+(((+(s0))+(s1))^(s4)))})));
  assign y1 = $signed(s5);
  assign y2 = ({{(ctrl[4]?(ctrl[5]?s0:s1):(ctrl[0]?s3:s2)),((s4)^~((ctrl[4]?+({3'sb001,5'sb11011,6'sb111011}):6'sb111100)))>=(((($signed(1'b0))>>(s5))>>((s7)>>((4'sb1010)|(s6))))>>(2'sb00)),$signed(!(5'sb01000)),u4},((3'sb010)^~(2'sb10))|(2'sb01),+(~|(~(s0))),5'sb01110})==($signed((ctrl[2]?($signed((ctrl[4]?(ctrl[1]?(s2)>>>(2'sb00):$signed(u6)):6'sb100101)))+((+((s3)|($signed(u0))))&(s5)):5'sb00111)));
  assign y3 = (ctrl[4]?$signed((ctrl[3]?{(2'sb00)<<<(((s4)<<<(($signed(s0))<<<((ctrl[4]?6'sb110011:s4))))<<(u3)),s3,3'sb001}:{(1'sb0)==(-((4'sb0011)==(1'sb1))),{-(($signed(+(u2)))>>>((s2)>(s3))),(ctrl[3]?6'sb001110:$signed((+(4'b0010))-(s2)))},5'sb10010})):(2'sb11)^((2'sb01)>>>((2'b00)>=((+({1{((s0)<<(s0))<<((6'sb001100)>>(u1))}}))>=(1'sb1)))));
  assign y4 = &(((ctrl[7]?(((2'sb00)>>>(6'sb110000))<<($signed(s4)))>>($signed(s5)):$signed($unsigned(s2))))<<(3'sb100));
  assign y5 = $signed(({s5,(2'sb11)^($signed(+(2'sb10))),s5,~&((s4)>>($signed((s6)<<<(s6))))})>>>((-(s6))^~(((ctrl[4]?((1'sb0)<<<((ctrl[4]?u7:s1)))+(-({1{s3}})):s0))<<(({3{(~^(u7))>>>({1{s2}})}})<<<(3'sb010)))));
  assign y6 = {s6};
  assign y7 = s4;
endmodule
