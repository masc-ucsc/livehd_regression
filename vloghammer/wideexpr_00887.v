module wideexpr_00887(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((ctrl[7]?(ctrl[3]?((+(s6))^~((+(((2'b11)+(5'sb00111))>>>($signed(s5))))-($signed(s1))))==((ctrl[5]?(2'sb00)-((($signed(s4))<<((5'sb11110)>>>(5'b11001)))-($signed((ctrl[3]?1'b1:u6)))):$signed((((1'sb1)^~(3'b000))>>((ctrl[0]?s5:s6)))|(s5)))):{(s5)>>>((({u5,(ctrl[7]?s6:6'sb111100),3'sb100,s1})>>>(+(4'sb1100)))>>>(s7)),((s3)<<<(|({4{(s4)&(s1)}})))>>>(((ctrl[7]?(s4)>>>((u6)<<(s4)):($signed(6'sb000111))&((6'sb010100)|(s6))))<<<(((ctrl[7]?-(s0):-(u0)))|(1'sb0)))}):(ctrl[1]?((-((ctrl[5]?$signed((s1)^(2'sb10)):{2{$unsigned(s4)}})))<=($signed(~(~&((2'b00)<<<(6'sb011110))))))<<(-((s7)<<<(((ctrl[3]?(3'sb101)^~(1'b0):(1'sb1)<<(6'sb010100)))>>>((-(u3))<(+(2'sb01)))))):5'b10001)))<=({(3'sb000)>>>({(ctrl[5]?4'sb0010:$signed({2{{1{(ctrl[3]?4'sb0110:s0)}}}})),&(3'sb000),3'sb000})});
  assign y1 = {{1{-($signed(s1))}},!(3'sb000),$signed(-(+(((6'sb001011)^(s5))^(1'b0)))),(u5)-(|(s7))};
  assign y2 = s2;
  assign y3 = $signed((ctrl[6]?(ctrl[0]?~|($signed(s6)):((((+(^(u6)))+(s1))<((4'sb1001)>>>(+($signed(s3)))))!=(u4))^~((ctrl[6]?^(6'sb000100):$unsigned((s6)<=((2'sb11)<<((s4)&(s2))))))):u4));
  assign y4 = (s0)<<($signed({4{(ctrl[6]?{6'sb000010}:({(+(2'b11))>>>({1{s4}}),($signed(1'sb1))>>>((s1)==(s0))})<<((-((4'b1011)<<<(s5)))<((+(5'sb11110))<=((ctrl[2]?s5:1'sb1)))))}}));
  assign y5 = {4{-(({$signed(&(u1)),+((ctrl[6]?5'sb00010:s2)),6'sb011110,($unsigned(1'sb0))>>>((2'sb10)|(s3))})<<<(s4))}};
  assign y6 = $signed($signed(5'sb00100));
  assign y7 = ((~|((({((s3)<<<(2'sb11))>>(u2),6'sb001110,s2})>>>(((u4)>>((s6)!=(3'sb000)))&((2'sb11)<(+(s7)))))^(s3)))&(({(1'sb1)<<<((s1)<<<(~^(s2))),s3,{(ctrl[0]?{4{{u4,3'sb000,u1,6'sb011100}}}:{(ctrl[5]?s6:s0)}),4'b0100},(ctrl[1]?s4:-((ctrl[5]?(ctrl[7]?s2:u5):{s0,s0,2'sb10,5'b10011})))})+({4{{$signed(6'sb001000),3'b011,{+(+(1'sb1)),{s4,(ctrl[3]?2'b10:u2),{3'sb100,5'sb11001,5'b01101}}}}}})))<<((2'sb00)-((3'sb011)+((s0)+(s3))));
endmodule
