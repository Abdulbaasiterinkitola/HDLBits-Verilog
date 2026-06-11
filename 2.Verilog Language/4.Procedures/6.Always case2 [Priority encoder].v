// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    
    always @(*) begin
        if (in == 4'd1 || in == 4'd3 || in == 4'd5 || in == 4'd9 || in == 4'd7 || in == 4'd11 || in == 4'd13 || in == 4'd15) begin
            pos = 2'b00;
        end
        else if (in == 4'd2 || in == 4'd6 || in == 4'd10 || in == 4'd14) begin
            pos = 2'b01;
        end
        else if (in == 4'd4 || in == 4'd12) begin
            pos = 2'b10;
        end
        else if (in == 4'd8) begin
            pos = 2'b11;
        end
        else begin
            pos = 2'b00;
        end
    end
                

endmodule