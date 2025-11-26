# Technical Specification: Automatic Base Detection Router

## 1. Overview

This document specifies the hardware implementation for automatic base selection based on operand value analysis, replacing the current opcode-based routing mechanism.

### 1.1 Current Approach (Opcode-Based)

```
cond_sel = 3 → route by opcode:
  opcode 0-2 (BIN_*) → Base-2 ALU
  opcode 3-5 (DEC_*) → Base-10 ALU
  opcode 6-8 (DUO_*) → Base-12 ALU
```

### 1.2 Proposed Approach (Operand-Based)

```
Analyze nibbles of op_a and op_b:
  All nibbles ≤ 9  → Route to Base-10 ALU (valid BCD)
  All nibbles ≤ 11 → Route to Base-12 ALU (valid duodecimal)
  Otherwise        → Route to Base-2 ALU (binary fallback)
```

---

## 2. Nibble Range Detection Logic

### 2.1 Data Representation

For 16-bit operands, each operand contains 4 nibbles (4 bits each):

```
op_a[15:0] = { nib_a3[15:12], nib_a2[11:8], nib_a1[7:4], nib_a0[3:0] }
op_b[15:0] = { nib_b3[15:12], nib_b2[11:8], nib_b1[7:4], nib_b0[3:0] }
```

Total: 8 nibbles to check per operation.

### 2.2 Nibble Validity Checks

#### 2.2.1 BCD Validity (≤9)

A nibble is valid BCD if its value is in range [0, 9].

```verilog
// Single nibble BCD check
wire is_bcd_valid = (nibble <= 4'd9);

// Equivalent combinational logic (no comparator needed):
// Invalid if nibble[3:1] == 3'b101 (10,11) or nibble[3:2] == 2'b11 (12-15)
wire is_bcd_invalid = (nibble[3] & nibble[2]) |     // 12-15
                      (nibble[3] & ~nibble[2] & nibble[1]);  // 10-11
wire is_bcd_valid = ~is_bcd_invalid;
```

#### 2.2.2 Duodecimal Validity (≤11)

A nibble is valid duodecimal if its value is in range [0, 11].

```verilog
// Single nibble duodecimal check
wire is_duo_valid = (nibble <= 4'd11);

// Equivalent combinational logic:
// Invalid if nibble >= 12, i.e., nibble[3:2] == 2'b11
wire is_duo_invalid = nibble[3] & nibble[2];  // 12-15 only
wire is_duo_valid = ~is_duo_invalid;
```

### 2.3 Aggregate Validity for All 8 Nibbles

```verilog
// Extract all 8 nibbles
wire [3:0] nib_a0 = op_a[3:0];
wire [3:0] nib_a1 = op_a[7:4];
wire [3:0] nib_a2 = op_a[11:8];
wire [3:0] nib_a3 = op_a[15:12];
wire [3:0] nib_b0 = op_b[3:0];
wire [3:0] nib_b1 = op_b[7:4];
wire [3:0] nib_b2 = op_b[11:8];
wire [3:0] nib_b3 = op_b[15:12];

// BCD validity (all nibbles ≤ 9)
wire all_bcd_valid = (nib_a0 <= 4'd9) & (nib_a1 <= 4'd9) &
                     (nib_a2 <= 4'd9) & (nib_a3 <= 4'd9) &
                     (nib_b0 <= 4'd9) & (nib_b1 <= 4'd9) &
                     (nib_b2 <= 4'd9) & (nib_b3 <= 4'd9);

// Duodecimal validity (all nibbles ≤ 11)
wire all_duo_valid = (nib_a0 <= 4'd11) & (nib_a1 <= 4'd11) &
                     (nib_a2 <= 4'd11) & (nib_a3 <= 4'd11) &
                     (nib_b0 <= 4'd11) & (nib_b1 <= 4'd11) &
                     (nib_b2 <= 4'd11) & (nib_b3 <= 4'd11);
```

---

## 3. Component Architecture

### 3.1 Nibble Checker Module

```
┌─────────────────────────────────────────────────────────────┐
│                    nibble_checker                           │
│                                                             │
│  Inputs:                                                    │
│    nibble[3:0]     - 4-bit nibble to check                 │
│                                                             │
│  Outputs:                                                   │
│    is_bcd_valid    - 1 if nibble ≤ 9                       │
│    is_duo_valid    - 1 if nibble ≤ 11                      │
│                                                             │
│  Implementation:                                            │
│    is_bcd_invalid = (nib[3] & nib[2]) |                    │
│                     (nib[3] & ~nib[2] & nib[1])            │
│    is_duo_invalid = nib[3] & nib[2]                        │
│                                                             │
│  Resources per checker:                                     │
│    - 2 LUTs (or 1 LUT6 for both outputs)                   │
└─────────────────────────────────────────────────────────────┘
```

### 3.2 Operand Analyzer Module

```
┌─────────────────────────────────────────────────────────────┐
│                   operand_analyzer                          │
│                                                             │
│  Inputs:                                                    │
│    op_a[15:0]      - First operand                         │
│    op_b[15:0]      - Second operand                        │
│                                                             │
│  Outputs:                                                   │
│    all_bcd_valid   - 1 if all 8 nibbles ≤ 9                │
│    all_duo_valid   - 1 if all 8 nibbles ≤ 11               │
│                                                             │
│  Internal structure:                                        │
│    8× nibble_checker instances                             │
│    2× 8-input AND gates for aggregation                    │
│                                                             │
│  Resources:                                                 │
│    - 8-16 LUTs for nibble checkers                         │
│    - 2 LUTs for AND aggregation                            │
│    - Total: ~10-18 LUTs                                    │
└─────────────────────────────────────────────────────────────┘
```

### 3.3 Base Selection Logic

```
┌─────────────────────────────────────────────────────────────┐
│                   base_selector                             │
│                                                             │
│  Inputs:                                                    │
│    all_bcd_valid   - From operand_analyzer                 │
│    all_duo_valid   - From operand_analyzer                 │
│    mode[1:0]       - Selection mode                        │
│                      00 = force base-2                     │
│                      01 = force base-10                    │
│                      10 = force base-12                    │
│                      11 = auto-detect                      │
│                                                             │
│  Output:                                                    │
│    target[1:0]     - Selected ALU                          │
│                      00 = base-2                           │
│                      01 = base-10                          │
│                      10 = base-12                          │
│                                                             │
│  Selection Priority (when mode=11):                        │
│    1. all_bcd_valid → base-10 (most restrictive)           │
│    2. all_duo_valid → base-12 (less restrictive)           │
│    3. else          → base-2  (fallback)                   │
│                                                             │
│  Logic:                                                     │
│    if (mode != 2'b11)                                      │
│      target = mode;                                        │
│    else if (all_bcd_valid)                                 │
│      target = 2'b01;  // base-10                           │
│    else if (all_duo_valid)                                 │
│      target = 2'b10;  // base-12                           │
│    else                                                    │
│      target = 2'b00;  // base-2                            │
└─────────────────────────────────────────────────────────────┘
```

---

## 4. Pipeline Architecture

### 4.1 Non-Pipelined (Combinational) Approach

```
         ┌──────────────┐   ┌──────────────┐   ┌─────────┐
op_a ───▶│   operand    │──▶│    base      │──▶│  ALU    │──▶ result
op_b ───▶│   analyzer   │   │   selector   │   │ router  │
         └──────────────┘   └──────────────┘   └─────────┘
              ~2 LUT              ~1 LUT          existing
              levels              level

Total combinational delay: ~3 LUT levels added to critical path
Timing impact: May reduce Fmax by 10-20%
```

### 4.2 Pipelined Approach (Recommended)

```
Cycle 0 (ANALYZE):
┌─────────────────────────────────────────────────────────────┐
│  op_a ──▶ ┌────────────┐                                   │
│           │  operand   │──▶ all_bcd_valid_r ──▶ [REG]      │
│  op_b ──▶ │  analyzer  │──▶ all_duo_valid_r ──▶ [REG]      │
│           └────────────┘                                   │
│  op_a ────────────────────────────────────────▶ [REG] op_a_r│
│  op_b ────────────────────────────────────────▶ [REG] op_b_r│
│  opcode ──────────────────────────────────────▶ [REG] opc_r │
└─────────────────────────────────────────────────────────────┘

Cycle 1 (DISPATCH):
┌─────────────────────────────────────────────────────────────┐
│  all_bcd_valid_r ──▶ ┌────────────┐                        │
│  all_duo_valid_r ──▶ │    base    │──▶ target[1:0]         │
│  mode            ──▶ │  selector  │                        │
│                      └────────────┘                        │
│                            │                               │
│                            ▼                               │
│                   ┌─────────────────┐                      │
│  op_a_r ────────▶ │                 │                      │
│  op_b_r ────────▶ │   ALU Router    │──▶ start_b2/b10/b12  │
│  opc_r  ────────▶ │                 │                      │
│                   └─────────────────┘                      │
└─────────────────────────────────────────────────────────────┘

Cycles 2+ (EXECUTE):
┌─────────────────────────────────────────────────────────────┐
│  Selected ALU executes (1-8 cycles depending on path)      │
└─────────────────────────────────────────────────────────────┘
```

### 4.3 Latency Analysis

| Scenario | Current (Opcode-Based) | Proposed (Operand-Based) | Overhead |
|----------|------------------------|--------------------------|----------|
| Native binary op | 1 cycle | 2 cycles | +1 cycle (+100%) |
| Native decimal op | 1 cycle | 2 cycles | +1 cycle (+100%) |
| Native duodecimal op | 1 cycle | 2 cycles | +1 cycle (+100%) |
| Emulated op | 6-8 cycles | 7-9 cycles | +1 cycle (+12-17%) |

**Key insight**: The 1-cycle pipeline overhead has the largest relative impact on native operations (+100%), but minimal impact on emulated operations (+12-17%).

---

## 5. Detailed Verilog Implementation

### 5.1 Nibble Checker (Optimized)

```verilog
module nibble_checker (
  input  wire [3:0] nibble,
  output wire       is_bcd_valid,
  output wire       is_duo_valid
);
  // BCD invalid: 10-15 (1010 to 1111)
  // nibble[3] & (nibble[2] | nibble[1]) covers 10-15
  wire bcd_invalid = nibble[3] & (nibble[2] | nibble[1]);

  // Duodecimal invalid: 12-15 (1100 to 1111)
  wire duo_invalid = nibble[3] & nibble[2];

  assign is_bcd_valid = ~bcd_invalid;
  assign is_duo_valid = ~duo_invalid;
endmodule
```

### 5.2 Operand Analyzer

```verilog
module operand_analyzer (
  input  wire [15:0] op_a,
  input  wire [15:0] op_b,
  output wire        all_bcd_valid,
  output wire        all_duo_valid
);
  wire [7:0] bcd_valid, duo_valid;

  // Check all 8 nibbles
  nibble_checker nc0 (.nibble(op_a[3:0]),   .is_bcd_valid(bcd_valid[0]), .is_duo_valid(duo_valid[0]));
  nibble_checker nc1 (.nibble(op_a[7:4]),   .is_bcd_valid(bcd_valid[1]), .is_duo_valid(duo_valid[1]));
  nibble_checker nc2 (.nibble(op_a[11:8]),  .is_bcd_valid(bcd_valid[2]), .is_duo_valid(duo_valid[2]));
  nibble_checker nc3 (.nibble(op_a[15:12]), .is_bcd_valid(bcd_valid[3]), .is_duo_valid(duo_valid[3]));
  nibble_checker nc4 (.nibble(op_b[3:0]),   .is_bcd_valid(bcd_valid[4]), .is_duo_valid(duo_valid[4]));
  nibble_checker nc5 (.nibble(op_b[7:4]),   .is_bcd_valid(bcd_valid[5]), .is_duo_valid(duo_valid[5]));
  nibble_checker nc6 (.nibble(op_b[11:8]),  .is_bcd_valid(bcd_valid[6]), .is_duo_valid(duo_valid[6]));
  nibble_checker nc7 (.nibble(op_b[15:12]), .is_bcd_valid(bcd_valid[7]), .is_duo_valid(duo_valid[7]));

  // Aggregate: all nibbles must be valid
  assign all_bcd_valid = &bcd_valid;  // 8-input AND
  assign all_duo_valid = &duo_valid;  // 8-input AND
endmodule
```

### 5.3 Auto-Detect Router (Top Module)

```verilog
module router_autodetect #(
  parameter B2_LAT_BIN  = 1, B2_LAT_DEC  = 8, B2_LAT_DUO  = 6,
  parameter B10_LAT_DEC = 1, B10_LAT_BIN = 6, B10_LAT_DUO = 6,
  parameter B12_LAT_DUO = 1, B12_LAT_BIN = 6, B12_LAT_DEC = 8
)(
  input  wire        clk,
  input  wire        rst,
  input  wire        start,
  input  wire [1:0]  mode,        // 00=base2, 01=base10, 10=base12, 11=auto
  input  wire [3:0]  opcode,
  input  wire [15:0] op_a,
  input  wire [15:0] op_b,
  output reg         busy,
  output reg         done,
  output reg  [31:0] result
);

  // ============ STAGE 1: Operand Analysis ============
  wire all_bcd_valid, all_duo_valid;
  operand_analyzer u_analyzer (
    .op_a(op_a), .op_b(op_b),
    .all_bcd_valid(all_bcd_valid),
    .all_duo_valid(all_duo_valid)
  );

  // ============ Pipeline Registers ============
  reg        start_r;
  reg [3:0]  opcode_r;
  reg [15:0] op_a_r, op_b_r;
  reg        bcd_valid_r, duo_valid_r;
  reg [1:0]  mode_r;

  always @(posedge clk) begin
    if (rst) begin
      start_r <= 1'b0;
    end else begin
      start_r     <= start;
      opcode_r    <= opcode;
      op_a_r      <= op_a;
      op_b_r      <= op_b;
      bcd_valid_r <= all_bcd_valid;
      duo_valid_r <= all_duo_valid;
      mode_r      <= mode;
    end
  end

  // ============ STAGE 2: Base Selection ============
  wire [1:0] auto_target = bcd_valid_r ? 2'd1 :   // BCD → base-10
                           duo_valid_r ? 2'd2 :   // Duo → base-12
                                         2'd0;   // else → base-2

  wire [1:0] target = (mode_r == 2'b11) ? auto_target : mode_r;

  // ============ Sub-ALUs ============
  reg  start_b2, start_b10, start_b12;
  wire busy_b2, done_b2;   wire [31:0] res_b2;
  wire busy_b10, done_b10; wire [31:0] res_b10;
  wire busy_b12, done_b12; wire [31:0] res_b12;

  base2_alu #(.LAT_BIN(B2_LAT_BIN), .LAT_DEC(B2_LAT_DEC), .LAT_DUO(B2_LAT_DUO)) u_b2 (
    .clk(clk), .rst(rst), .start(start_b2), .opcode(opcode_r), .a(op_a_r), .b(op_b_r),
    .busy(busy_b2), .done(done_b2), .result(res_b2)
  );
  base10_alu #(.LAT_DEC(B10_LAT_DEC), .LAT_BIN(B10_LAT_BIN), .LAT_DUO(B10_LAT_DUO)) u_b10 (
    .clk(clk), .rst(rst), .start(start_b10), .opcode(opcode_r), .a(op_a_r), .b(op_b_r),
    .busy(busy_b10), .done(done_b10), .result(res_b10)
  );
  base12_alu #(.LAT_DUO(B12_LAT_DUO), .LAT_BIN(B12_LAT_BIN), .LAT_DEC(B12_LAT_DEC)) u_b12 (
    .clk(clk), .rst(rst), .start(start_b12), .opcode(opcode_r), .a(op_a_r), .b(op_b_r),
    .busy(busy_b12), .done(done_b12), .result(res_b12)
  );

  // ============ FSM ============
  localparam S_IDLE = 0, S_ANALYZE = 1, S_DISPATCH = 2, S_WAIT = 3;
  reg [1:0] st;
  reg [1:0] target_r;

  always @(posedge clk) begin
    if (rst) begin
      st <= S_IDLE;
      busy <= 1'b0;
      done <= 1'b0;
      start_b2 <= 1'b0;
      start_b10 <= 1'b0;
      start_b12 <= 1'b0;
      result <= 32'd0;
    end else begin
      done <= 1'b0;
      start_b2 <= 1'b0;
      start_b10 <= 1'b0;
      start_b12 <= 1'b0;

      case (st)
        S_IDLE: begin
          if (start) begin
            busy <= 1'b1;
            st <= S_ANALYZE;
          end
        end

        S_ANALYZE: begin
          // Pipeline register delay - analysis complete
          st <= S_DISPATCH;
        end

        S_DISPATCH: begin
          // Dispatch to selected ALU
          target_r <= target;
          case (target)
            2'd0: start_b2  <= 1'b1;
            2'd1: start_b10 <= 1'b1;
            2'd2: start_b12 <= 1'b1;
            default: start_b2 <= 1'b1;
          endcase
          st <= S_WAIT;
        end

        S_WAIT: begin
          if ((target_r == 2'd0 && done_b2) ||
              (target_r == 2'd1 && done_b10) ||
              (target_r == 2'd2 && done_b12)) begin
            result <= (target_r == 2'd0) ? res_b2 :
                      (target_r == 2'd1) ? res_b10 : res_b12;
            done <= 1'b1;
            busy <= 1'b0;
            st <= S_IDLE;
          end
        end
      endcase
    end
  end
endmodule
```

---

## 6. FPGA Resource Estimates

### 6.1 New Components

| Component | LUTs | FFs | Description |
|-----------|------|-----|-------------|
| nibble_checker (×8) | 8-16 | 0 | 2 LUTs each or 1 LUT6 shared |
| 8-input AND (×2) | 2-4 | 0 | Aggregate validity |
| Pipeline registers | 0 | 38 | op_a, op_b, opcode, flags, mode |
| FSM extension | 2-4 | 2 | Additional states |
| **Total overhead** | **~12-24** | **~40** | |

### 6.2 Complete Router Comparison

| Resource | Original Router | Auto-Detect Router | Delta |
|----------|-----------------|--------------------| ----- |
| LUTs | ~180-250 | ~200-280 | +20-30 |
| FFs | ~150-200 | ~190-240 | +40 |
| DSP48 | 3 | 3 | 0 |
| Fmax impact | baseline | -5-10% | -5-10% |

---

## 7. Timing Considerations

### 7.1 Critical Path Analysis

```
Combinational path (worst case):
  op_a/op_b → nibble_checker → AND tree → base_selector → ALU start

  Delay breakdown:
    nibble_checker: ~0.3-0.5 ns (2 LUT levels)
    8-input AND:    ~0.3-0.4 ns (2 LUT levels)
    base_selector:  ~0.2-0.3 ns (1 LUT level)
    ─────────────────────────────────────────
    Total added:    ~0.8-1.2 ns
```

### 7.2 Pipelining Benefit

With the recommended pipeline stage:
- Critical path is broken at pipeline register
- Each stage: ~2-3 LUT levels
- Maintains original Fmax capability

---

## 8. Misclassification Analysis

### 8.1 False Positive Scenarios

| Scenario | Actual Intent | Detection Result | Consequence |
|----------|---------------|------------------|-------------|
| Binary 0x1234 | Binary op | BCD detected | 6-cycle emulation instead of 1-cycle native |
| Binary 0x0A0B | Binary op | Duodecimal detected | 6-cycle emulation instead of 1-cycle native |
| Binary 0x9999 | Binary op | BCD detected | 6-cycle emulation instead of 1-cycle native |

### 8.2 Misclassification Probability

For uniformly random 16-bit operands:
- P(nibble ≤ 9) = 10/16 = 62.5%
- P(all 8 nibbles ≤ 9) = (10/16)^8 ≈ 2.3%
- P(nibble ≤ 11) = 12/16 = 75%
- P(all 8 nibbles ≤ 11) = (12/16)^8 ≈ 10%

**Implication**: ~2.3% of random binary data will be misclassified as BCD, ~10% as duodecimal.

### 8.3 Mitigation Strategies

1. **Hybrid mode**: Use opcode hint + operand analysis
2. **Confidence threshold**: Require N consecutive BCD operations before switching
3. **Software annotation**: Allow programmer to specify expected format
4. **Workload profiling**: Pre-configure based on known data patterns

---

## 9. Mode Summary

| mode[1:0] | Behavior | Use Case |
|-----------|----------|----------|
| 00 | Force Base-2 | Known binary workloads |
| 01 | Force Base-10 | Known BCD workloads |
| 10 | Force Base-12 | Known duodecimal workloads |
| 11 | Auto-detect | Mixed/unknown workloads |

---

## 10. Implementation Checklist

- [ ] Create `nibble_checker.v` module
- [ ] Create `operand_analyzer.v` module
- [ ] Create `router_autodetect.v` (modified router)
- [ ] Update testbench for new modes
- [ ] Verify timing closure after synthesis
- [ ] Benchmark misclassification rate on target workloads
- [ ] Document mode selection guidelines

---

## 11. Conclusion

The automatic base detection approach adds:
- **+1 cycle latency** (pipeline stage for analysis)
- **+12-24 LUTs** (nibble checkers and selection logic)
- **+40 FFs** (pipeline registers)

**Best suited for**:
- Workloads with strongly formatted operands (packed BCD, duodecimal)
- Systems where operand format is unknown at compile time

**Not recommended for**:
- Latency-critical applications where 1-cycle native ops are essential
- Random/arbitrary binary data (high misclassification rate)
- Mixed workloads without clear operand formatting
