module wideexpr_00740(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = {4{u6}};
  assign y1 = {3{s3}};
  assign y2 = $signed(^(+(((4'sb0001)>>>(s0))^~(-(1'sb1)))));
  assign y3 = $signed((3'sb000)^~((^(s5))<=(((s1)<<((4'sb0000)^~(4'sb0010)))==(5'sb10001))));
  assign y4 = (6'sb000010)|((ctrl[2]?-($signed(-(u7))):$signed(^({4{u4}}))));
  assign y5 = $unsigned((5'sb10100)>=(s2));
  assign y6 = (ctrl[5]?-((s3)>($unsigned(+(u0)))):$signed($signed(-((ctrl[2]?2'sb00:5'b00001)))));
  assign y7 = (({3{(s6)<<<($signed(s2))}})^~((ctrl[3]?((+(-($signed(u2))))>=(-((ctrl[4]?5'b01100:~^(s3)))))>>(6'sb001011):s0)))^~(((ctrl[6]?$unsigned((((ctrl[5]?5'sb01011:((ctrl[7]?s5:2'sb00))+((s7)|(6'sb100011))))^(s6))+((((ctrl[4]?(ctrl[4]?3'sb101:s5):(ctrl[6]?s4:s4)))|((5'sb11110)<<<(s4)))<<($signed(($signed(s6))>>((s1)^~(2'sb00)))))):(((s7)^(5'sb11011))==(6'sb101111))^((ctrl[6]?(ctrl[3]?s3:+(((3'sb010)!=(s4))>>>(4'sb1000))):(($signed((s5)^~(1'sb1)))<(($unsigned(1'sb1))<<<((ctrl[5]?3'b101:u0))))>>>(&((1'sb0)|((ctrl[1]?s0:6'sb101000))))))))-(s5));
endmodule
