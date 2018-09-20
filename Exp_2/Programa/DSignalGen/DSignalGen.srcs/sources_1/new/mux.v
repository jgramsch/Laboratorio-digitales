module signal_mux(
  input [7:0] triang,
  input [7:0] square,
  input [7:0] sin,
  input [1:0] selector ,
  output reg [7:0] senal 
);


always @ (*)
begin
  case (selector)
    2'b00 : senal = triang;
    2'b01 : senal = square;
    2'b10 : senal = sin;
    default: senal = triang;
  endcase
end
endmodule // 