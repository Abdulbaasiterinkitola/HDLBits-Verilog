module top_module ( input clk, input d, output q );
    wire q1, q2;
    my_dff sr1 (clk, d, q1);
    my_dff sr2 (clk, q1, q2);
    my_dff sr3 (clk, q2, q);
endmodule