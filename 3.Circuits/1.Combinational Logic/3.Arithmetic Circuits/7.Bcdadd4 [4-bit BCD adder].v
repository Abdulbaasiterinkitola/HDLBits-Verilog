module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    
    wire cout1, cout2, cout3, cout4;
    wire [3:0] sum1, sum2, sum3, sum4;
    
    bcd_fadd fadd1 (a[3:0], b[3:0], cin, cout1, sum1);
    bcd_fadd fadd2 (a[7:4], b[7:4], cout1, cout2, sum2);
    bcd_fadd fadd3 (a[11:8], b[11:8], cout2, cout3, sum3);
    bcd_fadd fadd4 (a[15:12], b[15:12], cout3, cout4, sum4);
    
    assign {cout, sum} = { cout4, {sum4,sum3,sum2,sum1} };

endmodule
