module wideexpr_00381(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[0]?(ctrl[5]?s1:$signed($signed($signed(s4)))):1'sb1);
  assign y1 = (((3'sb011)|({$signed($signed(6'b000110)),$signed((+((4'sb1111)!=(s1)))==(+((s7)^(6'sb100111)))),($signed(((s2)>>(s7))&(-(2'sb01))))>(4'sb1110)}))>(6'sb111000))^~(((ctrl[2]?(((s5)<<<(^((s6)<<(s6))))|((ctrl[4]?(ctrl[1]?$signed(s2):(s6)+(s0)):(ctrl[6]?+(1'b0):(6'sb110001)^(6'sb000101)))))^~($signed($unsigned(((ctrl[5]?s4:s6))<<<(s5)))):-($signed((4'sb1000)^(((2'sb01)^~(2'sb01))+((1'sb1)<<<(3'sb010)))))))<(+((ctrl[2]?4'sb1011:s5))));
  assign y2 = s0;
  assign y3 = ((((5'sb01101)>>({{s5,s7,s0}}))>>>((ctrl[1]?3'sb110:(ctrl[4]?s1:+(6'sb001010)))))<<<((ctrl[2]?(ctrl[6]?(ctrl[2]?{4'sb0001,4'sb0010,u7,u2}:|(4'sb1010)):(ctrl[4]?(u0)^(6'b011111):(u7)>(u5))):((ctrl[6]?(4'sb1100)>>(s2):(s2)>>>(s2)))>>((|(s0))==((ctrl[2]?2'b01:u7))))))-($signed($signed({((ctrl[3]?u4:5'sb11101))<(1'sb1),-(1'sb1)})));
  assign y4 = $signed((($signed(+(+((ctrl[2]?(u1)+(~&(3'sb101)):~(!(s1)))))))<<<(^(s1)))>>>(((ctrl[4]?2'b00:(s4)>=($signed({$signed((ctrl[1]?s1:5'sb10001)),2'sb01,3'b101,s1}))))==({$signed({4{s4}}),4'sb1000,5'sb01100})));
  assign y5 = u6;
  assign y6 = ({2'sb01,2'sb10,((((5'sb00010)<<<(2'b00))>>(5'sb00101))<<((ctrl[4]?(6'sb101000)&(5'sb10101):$signed(s7))))<<((5'sb00110)<(((6'sb111111)<<(6'sb110110))<<<((3'b101)<<<(s4)))),(u7)&(~^($signed(~^(s5))))})<<<((ctrl[1]?$signed((ctrl[4]?$signed(~&(u2)):(ctrl[7]?(s0)>>(4'sb1010):(s3)^~(6'sb111110)))):u0));
  assign y7 = ((ctrl[0]?s1:$signed((((($signed(4'sb0000))^~(+({1{2'b00}})))^~(((4'sb1001)^((3'sb110)>>>(u1)))<<<((ctrl[1]?s3:(2'sb01)<<<(s6)))))<<((ctrl[7]?(-((ctrl[2]?u0:s7)))+(s2):s4)))<<(s0))))>>>((u2)<<($signed((s5)|(2'sb11))));
endmodule
