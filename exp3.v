module exp3 (
    input A,           // First input bit
    input B,           // Second input bit
    input mode,        // Mode select: 0 = Half Adder, 1 = Half Subtractor
    output reg SumDiff, // Sum (if mode=0) or Difference (if mode=1)
    output reg CarryBorrow // Carry (if mode=0) or Borrow (if mode=1)
);

always @(*) begin
    if (mode == 1'b0) begin
        // Half Adder Mode
        SumDiff = A ^ B;             // Sum = A XOR B
        CarryBorrow = A & B;         // Carry = A AND B
    end else begin
        // Half Subtractor Mode
        SumDiff = A ^ B;             // Difference = A XOR B
        CarryBorrow = (~A) & B;      // Borrow = NOT A AND B
    end
end

endmodule