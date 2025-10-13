// Router Module
// Switches between Base-2, Base-10, and Base-12 ALUs

module router (
    input wire clk,
    input wire reset,
    input wire [3:0] operation,
    input wire [31:0] operand_a,
    input wire [31:0] operand_b,
    input wire [1:0] base_select, // 0=base2, 1=base10, 2=base12
    output reg [31:0] result,
    output reg done
);

    // ALU outputs
    wire [31:0] result_base2;
    wire [31:0] result_base10;
    wire [31:0] result_base12;
    wire done_base2;
    wire done_base10;
    wire done_base12;
    
    // ALU enables
    reg enable_base2, enable_base10, enable_base12;
    
    // Base-2 ALU instantiation
    base2_alu alu_b2 (
        .clk(clk),
        .reset(reset),
        .enable(enable_base2),
        .operation(operation),
        .operand_a(operand_a),
        .operand_b(operand_b),
        .result(result_base2),
        .done(done_base2)
    );
    
    // Base-10 ALU instantiation
    base10_alu alu_b10 (
        .clk(clk),
        .reset(reset),
        .enable(enable_base10),
        .operation(operation),
        .operand_a(operand_a),
        .operand_b(operand_b),
        .result(result_base10),
        .done(done_base10)
    );
    
    // Base-12 ALU instantiation
    base12_alu alu_b12 (
        .clk(clk),
        .reset(reset),
        .enable(enable_base12),
        .operation(operation),
        .operand_a(operand_a),
        .operand_b(operand_b),
        .result(result_base12),
        .done(done_base12)
    );
    
    // Router logic
    always @(*) begin
        // Default: disable all ALUs
        enable_base2 = 1'b0;
        enable_base10 = 1'b0;
        enable_base12 = 1'b0;
        result = 32'd0;
        done = 1'b0;
        
        case (base_select)
            2'd0: begin // Use Base-2
                enable_base2 = 1'b1;
                result = result_base2;
                done = done_base2;
            end
            2'd1: begin // Use Base-10
                enable_base10 = 1'b1;
                result = result_base10;
                done = done_base10;
            end
            2'd2: begin // Use Base-12
                enable_base12 = 1'b1;
                result = result_base12;
                done = done_base12;
            end
            default: begin
                enable_base2 = 1'b1;
                result = result_base2;
                done = done_base2;
            end
        endcase
    end

endmodule