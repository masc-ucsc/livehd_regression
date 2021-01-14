module wideexpr_00107(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = $signed({3'sb010,($signed(+(2'sb10)))!=(s7),~((&(s4))+(s7))});
  assign y1 = s5;
  assign y2 = 4'sb0111;
  assign y3 = (ctrl[0]?(ctrl[0]?{2{((ctrl[6]?((ctrl[3]?4'sb0100:s2))!=($signed(s2)):u2))^(((ctrl[7]?u2:(3'b100)&(s3)))>(5'b00001))}}:{s5,1'sb0}):((s3)>=((+($unsigned((2'sb10)^(3'sb011))))&(+(((s1)^(1'sb0))|(-(5'b11000))))))+(((ctrl[4]?1'sb1:6'sb011100))>=((5'sb01010)+(s3))));
  assign y4 = $signed((ctrl[2]?(^((|((ctrl[7]?($signed(s5))|((ctrl[6]?5'sb10000:6'sb001111)):$signed(-(s0)))))<<<({4{3'sb000}})))|((ctrl[7]?$signed(2'sb00):s0)):{((ctrl[3]?2'sb10:s2))&(u3),((ctrl[3]?s0:(s5)>>(4'sb1010)))<<($signed($signed(({3'b001,3'sb100})^((s1)<<<((ctrl[6]?4'sb0111:5'sb00011)))))),5'sb11111}));
  assign y5 = $signed(6'sb110011);
  assign y6 = (ctrl[3]?s0:$signed(5'b01110));
  assign y7 = (($signed(s5))<<<((3'b111)>>((5'sb10111)<(|((ctrl[4]?|($unsigned(u6)):(ctrl[4]?(s3)<=(1'sb1):$signed(s6))))))))|($unsigned(^((ctrl[1]?-((s7)<<(+(~^(u1)))):$signed(((3'sb010)>=((1'b1)<<(s1)))<=((ctrl[1]?~^(3'sb110):u6)))))));
endmodule
