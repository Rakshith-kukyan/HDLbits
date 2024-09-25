/*Create a 100-bit binary ripple-carry adder by instantiating 100 full adders. The adder adds two 100-bit numbers and a carry-in to produce a 100-bit sum and carry out. To encourage you to actually instantiate full adders, also output the carry-out from each full adder in the ripple-carry adder. cout[99] is the final carry-out from the last full adder, and is the carry-out you usually see. /*

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    always @(*) begin
        for(int i=0;i<$bits(a);i=i+1) begin
            if(i==0) begin
                sum[i]=a[i]^b[i]^cin;
                cout[i]=(a[i]&b[i])|(cin&a[i])|(b[i]&cin);
            end
            else begin
                sum[i]=a[i]^b[i]^cout[i-1'b1];
                cout[i]=(a[i]&b[i])|(cout[i-1'b1]&a[i])|(b[i]&cout[i-1'b1]);
            end
        end
    end
endmodule
