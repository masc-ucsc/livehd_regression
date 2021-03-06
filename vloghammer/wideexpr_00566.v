module wideexpr_00566(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = 3'sb100;
  assign y1 = (ctrl[3]?({({{6'b111000,s1},3'sb111,&(s4),$signed(u5)})|(~(u7)),(s1)&(((5'sb10000)-(s2))+((ctrl[3]?2'sb01:s2))),(((s5)<<<(6'sb000010))|($signed(6'sb000001)))<<<(((s4)>=(u1))<<((ctrl[0]?2'sb11:4'sb1110))),{4{!((3'sb010)<<(5'sb01101))}}})>>>((ctrl[3]?s6:s4)):4'sb1101);
  assign y2 = (!((($signed(u5))^~((ctrl[4]?s3:1'sb1)))!=(s1)))-(2'b01);
  assign y3 = (($signed(((s1)&({2{2'sb01}}))<<<((+(6'sb111111))&(s6))))>>>(((s4)^~(((ctrl[5]?s7:-({4{s4}})))<<(6'sb101111)))+(s2)))<<((ctrl[0]?(({4{(ctrl[6]?$signed({2{s3}}):(ctrl[3]?5'sb10011:(ctrl[1]?s4:2'sb11)))}})-($signed((ctrl[4]?s5:s7))))>(|((+($signed(6'b011111)))>=(($signed((s6)^~(s2)))|((ctrl[1]?2'sb01:(1'sb0)>>(s1)))))):1'sb1));
  assign y4 = (ctrl[2]?(1'b0)>>>(~^((6'sb001000)==(s6))):u3);
  assign y5 = +(((2'sb00)!=(s7))>>({s1,6'sb101001}));
  assign y6 = s0;
  assign y7 = $signed($signed((ctrl[1]?s7:{4{(s4)>>(3'sb100)}})));
endmodule
