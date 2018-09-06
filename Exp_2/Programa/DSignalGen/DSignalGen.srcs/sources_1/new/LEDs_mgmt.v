module LEDman (in,out);
input [7:0] in;
output [7:0] out;
always @ ( in )
  begin
  casez(in)
  8'b00000000: out = 8'b00000000;
  8'b00000001: out = 8'b00000001;
  8'b0000001z: out = 8'b00000010;
  8'b000001zz: out = 8'b00000100;
  8'b00001zzz: out = 8'b00001000;
  8'b0001zzzz: out = 8'b00010000;
  8'b001zzzzz: out = 8'b00100000;
  8'b01zzzzzz: out = 8'b01000000;
  8'b1zzzzzzz: out = 8'b10000000;
  endcase
  end
endmodule
