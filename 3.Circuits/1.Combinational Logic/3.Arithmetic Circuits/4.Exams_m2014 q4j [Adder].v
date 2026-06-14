module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);

    wire cout1, cout2, cout3, cout4, sum1, sum2, sum3, sum4;
    
    fadd fadd1 (x[0], y[0], 1'b0, cout1, sum1);
    fadd fadd2 (x[1], y[1], cout1, cout2, sum2);
    fadd fadd3 (x[2], y[2], cout2, cout3, sum3);
    fadd fadd4 (x[3], y[3], cout3, cout4, sum4);
    
    assign sum = {cout4, sum4, sum3, sum2, sum1};
endmodule

module fadd( 
    input a, b, cin,
    output cout, sum );
    
    assign sum = a^b^cin;
    assign cout = (a&b) + (b&cin) + (a&cin);

endmodule

