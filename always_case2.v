// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    always@(*) begin
        case(in)
            4'b1000: pos=2'b11;
            4'b1100: pos=2'b10;
            4'b0100: pos=2'b10;
            4'b1110: pos=2'b01;
            4'b1010: pos=2'b01;
            4'b0110: pos=2'b01;
            4'b0010: pos=2'b01;
            default: pos=0;
        endcase
    end

endmodule
