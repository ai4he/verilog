// 9 operation IDs (3 "suited" to each base)
`define OP_BIN_ADD    4'd0
`define OP_BIN_SUB    4'd1
`define OP_BIN_MUL    4'd2

`define OP_DEC_ADD    4'd3
`define OP_DEC_SUB    4'd4
`define OP_DEC_MUL10  4'd5   // multiply by 10 (decimal)

`define OP_DUO_ADD12  4'd6
`define OP_DUO_SUB12  4'd7
`define OP_DUO_MUL3   4'd8   // multiply by 3 (duodecimal-friendly)
