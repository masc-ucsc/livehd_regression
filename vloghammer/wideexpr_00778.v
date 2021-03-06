module wideexpr_00778(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = s4;
  assign y1 = ~((ctrl[7]?5'sb10001:((ctrl[4]?(((s1)>>(s4))|((6'sb100011)>>(s6)))>>>($signed((ctrl[0]?5'sb10001:1'sb0))):-((ctrl[0]?+(s5):$signed(u3)))))+((ctrl[2]?3'sb110:s5))));
  assign y2 = (3'sb000)>>>((ctrl[6]?{2{$signed((u4)-(u7))}}:u6));
  assign y3 = u3;
  assign y4 = (ctrl[3]?(ctrl[0]?s4:(ctrl[5]?(+($signed(-((+(s3))&((1'sb1)^~(2'sb01))))))^(((($signed($signed(6'b101001)))>>>((ctrl[4]?^(u5):(u7)&(s1))))>>((ctrl[2]?6'sb110011:(ctrl[2]?s0:2'sb10))))^((ctrl[2]?$signed(((s0)^(s4))^~(s7)):(((6'sb101111)+(s4))>>>($signed(1'b1)))+(s3)))):s7)):+(-(-(2'b01))));
  assign y5 = ((ctrl[0]?(({u2,5'b00010,3'sb101})<<($signed(4'sb1010)))!=((4'sb1100)>((1'sb0)<(u1))):(ctrl[3]?(ctrl[6]?(ctrl[5]?s2:6'sb010010):{s3,s6}):~|({4{3'b110}}))))<<($unsigned(({1{(ctrl[1]?2'b10:s4)}})<<(&(1'sb0))));
  assign y6 = (&((ctrl[0]?s6:$signed(($signed(s0))^(s7)))))>=((&((!((ctrl[0]?$signed(s6):$signed({$signed(2'sb10)}))))<<<((-({1{-((u6)^~(6'sb011000))}}))^~(-(-($signed(1'b1)))))))>(u5));
  assign y7 = s5;
endmodule
