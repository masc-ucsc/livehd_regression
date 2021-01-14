module wideexpr_00394(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = $signed((ctrl[0]?(s4)>>(((+(u3))<<<(3'sb011))<<<(!({{6'sb100001,2'sb10,s1,1'b0},!(u2),-(5'b00010)}))):(ctrl[2]?s7:((ctrl[3]?(+(s5))+((2'sb11)^~(s1)):(+(s3))|($signed(3'sb101))))^(-({4{$signed(1'sb1)}})))));
  assign y1 = (ctrl[5]?4'sb0011:(($signed($signed(5'sb11110)))>>>({s0,$signed(5'sb01101),-(u4),$unsigned(s2)}))<<(s1));
  assign y2 = (ctrl[4]?((s6)<<<(~&(3'sb110)))>>(^(^(+((ctrl[2]?1'sb0:$unsigned($unsigned(5'sb11101))))))):($signed((ctrl[5]?(3'sb000)<<<((ctrl[5]?((ctrl[3]?(ctrl[6]?4'b0110:4'b0101):{s0,5'sb00101,1'b0,s2}))>>(-($signed(u4))):((~(s7))>>>(-(6'sb101111)))^({{3{4'sb1111}},(s7)>(s4),(4'sb0100)&(1'sb1)}))):u5)))>>((+($signed(s4)))<<<(4'sb1010)));
  assign y3 = ((ctrl[3]?(2'sb00)^~(s6):$signed(({4{{s2,!(4'sb1110),(s5)-(5'sb00011)}}})>>>(~&({(s2)>>(s5),$signed(6'sb000101),$signed(5'sb00110)})))))>($signed((($signed(s3))-((ctrl[1]?(2'sb11)^(-(s3)):(-(s5))<<((s7)^~(s6)))))==(-((-($signed(u2)))+(+(~|(1'sb0)))))));
  assign y4 = (((ctrl[3]?(ctrl[6]?|((u0)>>>(2'sb01)):(!(1'sb1))<<<((u6)^~(u3))):(ctrl[4]?$signed(3'sb100):4'sb0111)))&(5'sb10101))>(({1'sb0,(3'sb000)^~(((4'sb1011)<<(s4))<<(~|(3'sb001)))})+($signed(+((ctrl[0]?$unsigned(s2):(6'sb011110)<<(u4))))));
  assign y5 = (((((ctrl[7]?(s3)>>>(5'sb10111):(ctrl[1]?s7:4'sb1111)))==(s5))^~({2{$signed((s1)+(5'sb10010))}}))>>>(+($signed(+((ctrl[4]?2'sb01:6'b111000))))))<<<(6'sb111011);
  assign y6 = $signed((ctrl[6]?4'sb1010:(ctrl[1]?(ctrl[1]?s0:-((ctrl[0]?s4:s1))):s6)));
  assign y7 = (ctrl[1]?|(s3):({1{$signed((((4'sb0111)>>(6'sb000110))^(1'sb1))<<<(((u2)&(s4))&({4{s2}})))}})|(~&(s4)));
endmodule
