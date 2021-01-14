module wideexpr_00148(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s2;
  assign y1 = (($unsigned(($signed(&((ctrl[7]?4'sb1110:5'b01100))))>>>(({4{{s6,6'sb101011,4'sb0111}}})>>>($signed($signed(3'sb000))))))<<($unsigned(5'sb11010)))<=(($signed(1'sb1))<({1{(ctrl[4]?1'sb0:s3)}}));
  assign y2 = (+(5'sb10000))^~(6'sb011100);
  assign y3 = -((((({s6,s0})!=((ctrl[5]?2'sb01:2'sb01)))&(s3))^~(({4{-(s2)}})>>>($unsigned((1'sb1)^(s3)))))+(((!({u7,6'sb100100}))>>>($signed(s3)))>(u5)));
  assign y4 = ((ctrl[1]?5'sb10101:((-((ctrl[3]?+(2'sb00):(2'sb10)>>>((3'sb011)>>>(2'sb11)))))>>({4{u2}}))>>>((ctrl[2]?$signed((ctrl[0]?$signed(u6):s5)):-((3'sb010)==(3'sb011))))))&(((ctrl[7]?-($signed($signed(s0))):5'sb01000))>>>((((ctrl[2]?(((ctrl[6]?s1:s7))<<({3{2'sb11}}))>>(2'b01):(($signed(s1))-(s6))>>>($signed((s2)>>(s5)))))<<<((+(&((ctrl[2]?3'b010:2'b00))))+($signed(((ctrl[7]?2'sb01:s7))<((ctrl[1]?s5:s4))))))<<((-(s1))>>((ctrl[3]?+((ctrl[6]?s6:$signed(s3))):({3{(ctrl[1]?6'sb011010:6'sb110110)}})>>(1'sb0))))));
  assign y5 = 4'sb0110;
  assign y6 = $signed(6'b000010);
  assign y7 = $signed(s5);
endmodule
