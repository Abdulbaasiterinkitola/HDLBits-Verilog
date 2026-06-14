module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    
    wire cout1, cout2, cout3, sum1, sum2, sum3;
    
    fadd fadd1 (a[0], b[0], cin, cout1, sum1);
    fadd fadd2 (a[1], b[1], cout1, cout2, sum2);
    fadd fadd3 (a[2], b[2], cout2, cout3, sum3);
    
    assign sum = {sum3, sum2, sum1};
    assign cout = {cout3, cout2, cout1};
endmodule

module fadd( 
    input a, b, cin,
    output cout, sum );
    
    assign sum = a^b^cin;
    assign cout = (a&b) + (b&cin) + (a&cin);

endmodule
