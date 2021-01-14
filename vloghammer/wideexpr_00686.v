module wideexpr_00686(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = (ctrl[3]?(~&(3'sb101))>({$signed(({2{$unsigned(+(+(u0)))}})!=(-((ctrl[4]?$signed((5'b00000)>(6'sb100000)):+((u2)>>(3'sb001)))))),(({(ctrl[3]?(-(s2))>=({s1,2'sb01,s5,u3}):2'b01),&(u3),-(s4),s6})^~((6'b011100)<<((((ctrl[0]?5'sb01101:s7))+($signed(6'sb000101)))<<<(s3))))&(1'b1),({$signed((3'sb001)^(4'sb1010)),1'sb1,3'sb100})>>((ctrl[5]?2'sb00:s5))}):|(+((((ctrl[2]?(-(s4))^($signed((u7)<<<(5'sb10000))):(s7)+(+((ctrl[1]?s0:2'sb01)))))!=(((ctrl[4]?(6'sb011101)^(s7):$signed((ctrl[1]?s7:5'sb10001))))^((($signed(1'sb0))+(s0))^~((s1)>>(s7)))))>>>(s4))));
  assign y1 = -({{4{(ctrl[5]?(ctrl[5]?2'sb01:s7):+(s1))}},((((5'sb10010)>>>(6'sb011110))+((ctrl[6]?$signed(s7):$signed(s5))))<<({$signed(-(5'sb01010))}))>>>((+((ctrl[5]?(ctrl[7]?1'sb0:5'sb11111):(ctrl[1]?5'sb00111:3'sb101))))>=(6'sb010001)),4'sb1001});
  assign y2 = $unsigned($signed((+((s2)<<<(s1)))>>>(3'sb001)));
  assign y3 = $signed(~((ctrl[6]?-((ctrl[3]?s0:s1)):(ctrl[7]?$signed(s1):s0))));
  assign y4 = 5'sb11101;
  assign y5 = 2'b10;
  assign y6 = +(+((((s5)+(+(u7)))<<(($unsigned(s4))<<((6'sb110000)<<(2'sb01))))<=($signed((^(s6))>>>(-(6'b011101))))));
  assign y7 = ($signed($unsigned((5'sb10010)!=((5'sb11110)-(+(u4))))))^~(+(s0));
endmodule
