// Base-2 ALU (Standard Binary Arithmetic)
// Optimized for binary operations

module base2_alu (
    input wire clk,
    input wire reset,
    input wire enable,
    input wire [3:0] operation,
    input wire [31:0] operand_a,
    input wire [31:0] operand_b,
    output reg [31:0] result,
    output reg done
);

    // Operation codes
    localparam OP_ADD = 4'd0;
    localparam OP_SUB = 4'd1;
    localparam OP_MUL = 4'd2;
    localparam OP_DIV = 4'd3;
    localparam OP_AND = 4'd4;
    localparam OP_OR  = 4'd5;
    localparam OP_XOR = 4'd6;
    localparam OP_SHL = 4'd7;
    localparam OP_SHR = 4'd8;
    
    reg [31:0] temp_result;
    reg [2:0] cycle_count;
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            result <= 32'd0;
            done <= 1'b0;
            cycle_count <= 3'd0;
            temp_result <= 32'd0;
        end else if (enable) begin
            case (operation)
                OP_ADD: begin
                    result <= operand_a + operand_b;
                    done <= 1'b1;
                    cycle_count <= 3'd0;
                end
                
                OP_SUB: begin
                    result <= operand_a - operand_b;
                    done <= 1'b1;
                    cycle_count <= 3'd0;
                end
                
                OP_MUL: begin
                    if (cycle_count == 0) begin
                        temp_result <= operand_a * operand_b;
                        cycle_count <= cycle_count + 1;
                        done <= 1'b0;
                    end else begin
                        result <= temp_result;
                        done <= 1'b1;
                        cycle_count <= 3'd0;
                    end
                end
                
                OP_DIV: begin
                    if (cycle_count < 3) begin
                        if (cycle_count == 0) begin
                            if (operand_b != 0)
                                temp_result <= operand_a / operand_b;
                            else
                                temp_result <= 32'hFFFFFFFF;
                        end
                        cycle_count <= cycle_count + 1;
                        done <= 1'b0;
                    end else begin
                        result <= temp_result;
                        done <= 1'b1;
                        cycle_count <= 3'd0;
                    end
                end
                
                OP_AND: begin
                    result <= operand_a & operand_b;
                    done <= 1'b1;
                    cycle_count <= 3'd0;
                end
                
                OP_OR: begin
                    result <= operand_a | operand_b;
                    done <= 1'b1;
                    cycle_count <= 3'd0;
                end
                
                OP_XOR: begin
                    result <= operand_a ^ operand_b;
                    done <= 1'b1;
                    cycle_count <= 3'd0;
                end
                
                OP_SHL: begin
                    result <= operand_a << operand_b[4:0];
                    done <= 1'b1;
                    cycle_count <= 3'd0;
                end
                
                OP_SHR: begin
                    result <= operand_a >> operand_b[4:0];
                    done <= 1'b1;
                    cycle_count <= 3'd0;
                end
                
                default: begin
                    result <= 32'd0;
                    done <= 1'b1;
                    cycle_count <= 3'd0;
                end
            endcase
        end else begin
            done <= 1'b0;
            cycle_count <= 3'd0;
        end
    end

endmodule