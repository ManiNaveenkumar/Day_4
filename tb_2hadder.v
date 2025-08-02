module tb_2hadder;
    reg a,b,c;
    wire sum,carry;
    hadder2 uut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
    initial begin
        $dumpfile("hadder2_.vcd");
        $dumpvars(0,tb_2hadder);
        #10;
        a=0;b=0;c=0;#10;
        a=0;b=0;c=1;#10;
        a=0;b=1;c=0;#10;
        a=0;b=1;c=1;#10;
        a=1;b=0;c=0;#10;
        a=1;b=0;c=1;#10;
        a=1;b=1;c=0;#10;
        a=1;b=1;c=1;#10;
        $finish;
    end
endmodule