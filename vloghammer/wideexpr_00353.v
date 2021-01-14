module wideexpr_00353(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = u2;
  assign y1 = s2;
  assign y2 = -(s2);
  assign y3 = {+(5'sb11001),|((ctrl[5]?$signed((ctrl[6]?1'sb0:(s3)>>(s6))):6'sb101100)),(ctrl[5]?{2{(3'sb100)>>>($signed(s4))}}:(ctrl[2]?(ctrl[1]?{(ctrl[1]?1'sb1:2'sb11)}:(ctrl[0]?{s1,6'sb111111,5'sb01101}:{s2})):$unsigned(s6))),2'b11};
  assign y4 = (-((ctrl[6]?$signed(((s4)+(5'sb00110))>>>(s4)):(s0)^({1{$unsigned(u4)}}))))|((s6)^~((ctrl[2]?$signed(s1):$signed((ctrl[5]?$unsigned(4'b0001):+(6'sb111110))))));
  assign y5 = (u5)^~(|((u5)>=(((u4)^~(5'sb10000))>>>(((s2)>>>(6'b100111))-((6'sb010100)>>>(s3))))));
  assign y6 = $signed({(ctrl[3]?(ctrl[4]?3'sb110:(s5)^~({1{(&($signed(2'sb10)))>(~(3'sb111))}})):({$signed(s1),-($unsigned({(6'b101100)<<(5'sb01001),(s7)<<(6'sb100111)}))})<<(1'sb1))});
  assign y7 = $signed(((ctrl[0]?(ctrl[1]?(s6)>>(1'sb0):$signed(s6)):$signed((ctrl[1]?2'sb11:s0))))+(s1));
endmodule
