module wideexpr_00064(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = ((ctrl[5]?2'sb11:{(ctrl[4]?$signed($signed((ctrl[1]?(1'sb1)>(s0):(1'sb0)>(4'sb0000)))):(ctrl[6]?-(s7):(ctrl[1]?-(s2):(s0)>>>($unsigned(1'b1)))))}))<<((ctrl[3]?2'sb11:((ctrl[0]?($signed(+($signed(s7))))^(s0):(6'sb101110)>>((4'sb1110)^(((ctrl[5]?1'sb1:2'sb10))>>(s0)))))&((($signed((s5)<<<((ctrl[5]?s6:s6))))>>({((6'sb001011)|(6'sb011010))+($signed(s0)),s4,{(ctrl[4]?s4:2'sb01),$signed(4'sb1111),$signed(2'sb00),(4'sb0110)>>(u2)}}))<<<({(({4'sb1001,3'sb100})&((3'b001)|(s3)))^(4'b1101)}))));
  assign y1 = 5'sb01101;
  assign y2 = (ctrl[4]?s4:(ctrl[2]?+(+($unsigned(((ctrl[7]?s6:u4))<<<(((u1)&(2'b10))>=((s2)>=(s3)))))):-(+($unsigned((+($signed(4'sb1000)))>>>({{1{5'sb11001}},(s7)<<<(s6),~|(u7)}))))));
  assign y3 = ({($signed(($signed(2'b10))>>>(s6)))^~(((ctrl[6]?4'sb1000:(+(u7))|((s0)>>(3'sb010))))>>(+($signed((s5)^~(s4))))),s3,6'b000101})>>(5'sb10000);
  assign y4 = 6'sb100000;
  assign y5 = $signed((ctrl[1]?4'b0110:5'b00011));
  assign y6 = -(((-((ctrl[7]?(ctrl[1]?6'sb100000:(ctrl[6]?s7:s5)):(s1)^~((1'sb0)>>(5'sb11001)))))|((s5)<<<(($signed((u1)+(s2)))-(((ctrl[6]?u4:2'b10))<<<((u1)>>(s1))))))<<<(+(2'b00)));
  assign y7 = 6'sb010100;
endmodule
