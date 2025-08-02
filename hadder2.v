module hadder2 (
    input a,b,c,
    output sum,carry
);
wire halfsum;
wire halfcarry;
wire fullc;
    hadder Ha1(a,b,halfsum,halfcarry);
    hadder Ha2(halfsum,c,sum,fullc);
    assign carry=halfcarry|fullc;

endmodule

module hadder (
    input a,b,
    output sum,carry
);
assign sum = a ^ b;
assign carry = (a&b);
    
endmodule