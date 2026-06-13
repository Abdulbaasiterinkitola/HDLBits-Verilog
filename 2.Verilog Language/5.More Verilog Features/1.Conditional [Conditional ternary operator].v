module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    wire [7:0] min_ab, min_bc, min_cd, min_abc;

    // assign intermediate_result1 = compare? true: false;
    
    assign min_ab = a<b ? a : b;
    assign min_bc = b<c ? b : c;
    assign min_cd = c<d ? c : d;
    assign min_abc = min_ab<min_bc ? min_ab : min_bc;
    assign min = min_abc<min_cd ? min_abc : min_cd;

endmodule
