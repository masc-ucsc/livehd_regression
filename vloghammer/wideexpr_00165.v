module wideexpr_00165(ctrl, u0, u1, u2, u3, u4, u5, u6, u7, s0, s1, s2, s3, s4, s5, s6, s7, y);
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
  assign y0 = {1{6'sb010001}};
  assign y1 = ((+((6'sb001011)<<(($signed(s3))>((ctrl[2]?s0:2'sb00)))))>>(6'sb100000))-((ctrl[5]?1'sb0:(($signed(+(u4)))+($signed((s5)|(s5))))&($signed((ctrl[1]?(s5)<<(1'sb0):(ctrl[3]?4'sb0011:1'sb1))))));
  assign y2 = u5;
  assign y3 = (2'sb01)>((($signed({((ctrl[6]?s4:s3))-(+(2'b10)),(u6)-((ctrl[2]?3'b011:s4)),{s0}}))<<<(s5))|($signed((s5)>>($signed(((ctrl[2]?s2:s1))>((s5)>>(5'b00101)))))));
  assign y4 = (ctrl[2]?($unsigned({1{s0}}))==({3'sb010}):{1{s4}});
  assign y5 = $signed({3{+((!({2{$signed((s5)^~((ctrl[6]?s0:2'sb01)))}}))>>>({1{(ctrl[6]?{$signed((ctrl[7]?s1:s7)),$signed((u2)^~(1'b1))}:2'b11)}}))}});
  assign y6 = (|(((($signed(-({3'sb101})))^(((s2)>>(~&($signed(5'sb00111))))<<((2'sb01)>>(s6))))-(-(^(s1))))>>>($signed($signed(((ctrl[3]?u6:((s4)>>>(5'sb10010))>((3'sb000)<<(s5))))^~((~^((1'sb1)>>>(3'sb110)))^((ctrl[5]?~|(2'b10):~(2'sb11)))))))))==(5'b11010);
  assign y7 = -((ctrl[6]?(2'sb01)<<($unsigned(($signed(-($signed(1'sb0))))<<(5'b01001))):6'sb100000));
endmodule
