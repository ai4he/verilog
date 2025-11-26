# FPGA Design for Radix-Specific ALU Hardware

This document explains how true radix-specific arithmetic hardware would be implemented on an FPGA, with the actual components needed for each base.

---

## Base-2 (Binary) ALU

Binary is native to FPGAs, so this is the most straightforward implementation.

### Data Representation

- **Width**: N bits represent values 0 to 2^N - 1
- **Example**: 16-bit input represents 0-65535 directly

### Components Required

#### 1. Binary Adder/Subtractor

```
┌─────────────────────────────────────────┐
│           Ripple-Carry Adder            │
│  ┌───┐   ┌───┐   ┌───┐       ┌───┐     │
│  │FA │───│FA │───│FA │─ ··· ─│FA │──Cout│
│  └───┘   └───┘   └───┘       └───┘     │
│   a[0]    a[1]    a[2]       a[n-1]    │
│   b[0]    b[1]    b[2]       b[n-1]    │
└─────────────────────────────────────────┘
```

**Components**:

- **Full Adders (FA)**: N full adders for N-bit addition
- **XOR gates**: For subtraction (invert B, set Cin=1 for two's complement)
- **Carry chain**: Native FPGA carry logic (CARRY4 on Xilinx)

**FPGA Resources**:

- LUTs: ~N (one per bit for sum computation)
- Carry chain: N bits (dedicated fast carry resources)

#### 2. Binary Multiplier

```
┌─────────────────────────────────────────┐
│         Array Multiplier                │
│                                         │
│    Partial products:                    │
│    pp[0] = a & {N{b[0]}}               │
│    pp[1] = a & {N{b[1]}} << 1          │
│    pp[2] = a & {N{b[2]}} << 2          │
│         ...                             │
│    Sum all partial products             │
└─────────────────────────────────────────┘
```

**Components**:

- **AND gates**: N² AND gates for partial product generation
- **Adder tree**: Wallace tree or Dadda tree for partial product reduction
- **DSP blocks**: Xilinx DSP48E1 can do 25×18 multiply in 1 cycle

**FPGA Resources** (16×16 multiply):

- Option A: 1 DSP48 block (preferred)
- Option B: ~256 LUTs + adder tree (if DSP unavailable)

#### 3. Control Logic

- Simple FSM: IDLE → COMPUTE → DONE
- Opcode decoder: 2-bit for ADD/SUB/MUL selection
- Output mux: Select result from adder or multiplier

---

## Base-10 (Decimal/BCD) ALU

Decimal arithmetic requires encoding decimal digits in binary and handling carries at 10 instead of 16.

### Data Representation - BCD (Binary-Coded Decimal)

- **4 bits per digit**: Each decimal digit (0-9) uses 4 bits
- **16-bit input**: 4 BCD digits (0000-9999 decimal)
- **Invalid codes**: 1010-1111 are unused (must be detected/prevented)

```
Example: Decimal 1234
BCD: 0001 0010 0011 0100
      1    2    3    4
```

### Components Required

#### 1. BCD Adder (Single Digit)

```
┌────────────────────────────────────────────────┐
│              BCD Digit Adder                   │
│                                                │
│  ┌──────────┐     ┌─────────────┐             │
│  │ 4-bit    │     │ Correction  │             │
│  │ Binary   │────▶│ Logic       │────▶ BCD Sum│
│  │ Adder    │     │ (+6 if >9)  │             │
│  └──────────┘     └─────────────┘             │
│       │                  │                     │
│       └──────────────────┴────────▶ Carry Out │
└────────────────────────────────────────────────┘
```

**Logic**:

```verilog
// BCD single-digit adder
wire [4:0] binary_sum = a[3:0] + b[3:0] + cin;
wire need_correction = (binary_sum > 9);
wire [3:0] bcd_sum = need_correction ? (binary_sum + 6) : binary_sum[3:0];
wire cout = need_correction | binary_sum[4];
```

**Components per digit**:

- 4-bit binary adder
- Comparator (>9 detection): checks if sum > 9
- Correction adder: adds 6 when needed
- Carry logic

#### 2. Multi-Digit BCD Adder (4 digits)

```
┌─────────────────────────────────────────────────────────┐
│                  4-Digit BCD Adder                      │
│                                                         │
│  ┌─────┐    ┌─────┐    ┌─────┐    ┌─────┐             │
│  │BCD  │───▶│BCD  │───▶│BCD  │───▶│BCD  │───▶ Cout    │
│  │Dig0 │    │Dig1 │    │Dig2 │    │Dig3 │             │
│  └─────┘    └─────┘    └─────┘    └─────┘             │
│  a[3:0]     a[7:4]     a[11:8]    a[15:12]            │
│  b[3:0]     b[7:4]     b[11:8]    b[15:12]            │
└─────────────────────────────────────────────────────────┘
```

**FPGA Resources** (4-digit BCD adder):

- LUTs: ~40-48 (vs ~16 for binary)
- No efficient use of carry chain (correction breaks it)

#### 3. BCD Subtractor

```
┌─────────────────────────────────────────────────────┐
│              BCD Digit Subtractor                   │
│                                                     │
│  binary_diff = a - b - borrow_in                   │
│  if (binary_diff < 0 or borrow occurred):          │
│      bcd_diff = binary_diff + 10                   │
│      borrow_out = 1                                │
│  else:                                             │
│      bcd_diff = binary_diff                        │
│      borrow_out = 0                                │
└─────────────────────────────────────────────────────┘
```

**Components per digit**:

- 4-bit binary subtractor
- Borrow detection (MSB check)
- Correction adder (+10 when borrowing)

#### 4. BCD Multiplier (×10)

Multiply by 10 is shift-and-add: `x × 10 = x × 8 + x × 2 = (x << 3) + (x << 1)`

```
┌────────────────────────────────────────┐
│          BCD ×10 Multiplier            │
│                                        │
│   Input: 4 BCD digits (D3 D2 D1 D0)   │
│                                        │
│   Step 1: Shift left by 1 digit       │
│           D3 D2 D1 D0 0               │
│                                        │
│   Output: 5 BCD digits                │
│   (with overflow detection)            │
└────────────────────────────────────────┘
```

For BCD, ×10 is simply a **digit shift** (extremely efficient):

- Shift all digits left by one position
- Insert 0 in least significant digit
- Check for overflow in most significant position

**FPGA Resources**: Just routing (essentially free)

#### 5. General BCD Multiplier

For arbitrary multiplication, use shift-and-add with BCD adders:

```
┌──────────────────────────────────────────────────┐
│           BCD Shift-and-Add Multiplier           │
│                                                  │
│  for each digit d in multiplier:                │
│      partial = multiplicand × d  (digit mult)   │
│      shift partial by digit position            │
│      accumulate with BCD adder                  │
└──────────────────────────────────────────────────┘
```

**Components**:

- Digit multiplier: Lookup table (10×10 = 100 entries)
- Multiple BCD adders for accumulation
- Shift registers for alignment

**FPGA Resources** (4×4 digit multiply):

- LUTs: ~200-300
- Registers: ~64 for pipeline stages
- Much slower than binary (multiple cycles or deep pipeline)

---

## Base-12 (Duodecimal) ALU

Duodecimal uses digits 0-11 (often written 0-9, A, B).

### Data Representation

- **4 bits per digit**: Each duodecimal digit (0-11) uses 4 bits
- **Invalid codes**: 1100-1111 (12-15) are unused
- **16-bit input**: 4 duodecimal digits (0 to 12⁴-1 = 20735)

```
Example: Duodecimal 1A3B (1×12³ + 10×12² + 3×12 + 11)
Encoding: 0001 1010 0011 1011
           1    A    3    B
Decimal value: 1728 + 1440 + 36 + 11 = 3215
```

### Components Required

#### 1. Duodecimal Adder (Single Digit)

```
┌────────────────────────────────────────────────┐
│           Duodecimal Digit Adder               │
│                                                │
│  ┌──────────┐     ┌─────────────┐             │
│  │ 4-bit    │     │ Correction  │             │
│  │ Binary   │────▶│ Logic       │────▶ Duo Sum│
│  │ Adder    │     │ (+4 if ≥12) │             │
│  └──────────┘     └─────────────┘             │
│       │                  │                     │
│       └──────────────────┴────────▶ Carry Out │
└────────────────────────────────────────────────┘
```

**Logic**:

```verilog
// Duodecimal single-digit adder
wire [4:0] binary_sum = a[3:0] + b[3:0] + cin;
wire need_correction = (binary_sum >= 12);  // ≥12, not >9
wire [3:0] duo_sum = need_correction ? (binary_sum + 4) : binary_sum[3:0];
// +4 because 16-12=4 (wrap to next power of 2)
wire cout = need_correction;
```

**Key difference from BCD**:

- BCD corrects by +6 (16-10=6) when sum > 9
- Duodecimal corrects by +4 (16-12=4) when sum ≥ 12

#### 2. Multi-Digit Duodecimal Adder

```
┌─────────────────────────────────────────────────────────┐
│              4-Digit Duodecimal Adder                   │
│                                                         │
│  ┌─────┐    ┌─────┐    ┌─────┐    ┌─────┐             │
│  │Duo  │───▶│Duo  │───▶│Duo  │───▶│Duo  │───▶ Cout    │
│  │Dig0 │    │Dig1 │    │Dig2 │    │Dig3 │             │
│  └─────┘    └─────┘    └─────┘    └─────┘             │
└─────────────────────────────────────────────────────────┘
```

**FPGA Resources** (4-digit duodecimal adder):

- LUTs: ~36-44 (slightly less than BCD due to simpler correction)
- Comparator threshold: 12 instead of 10

#### 3. Duodecimal Subtractor

```verilog
// Duodecimal single-digit subtractor
wire [4:0] binary_diff = {1'b0, a[3:0]} - b[3:0] - borrow_in;
wire need_borrow = binary_diff[4];  // Negative result
wire [3:0] duo_diff = need_borrow ? (binary_diff - 4) : binary_diff[3:0];
// -4 because we borrow 12, but binary borrows 16, so subtract 4
wire bout = need_borrow;
```

#### 4. Duodecimal ×3 Multiplier

Multiply by 3: `x × 3 = x × 2 + x = (x << 1) + x`

```
┌────────────────────────────────────────────────┐
│          Duodecimal ×3 Multiplier              │
│                                                │
│  ┌─────────┐                                   │
│  │ x << 1  │──────┐                           │
│  │ (×2)    │      │    ┌──────────┐           │
│  └─────────┘      ├───▶│ Duo Add  │──▶ Result │
│                   │    └──────────┘           │
│  ┌─────────┐      │                           │
│  │   x     │──────┘                           │
│  └─────────┘                                  │
└────────────────────────────────────────────────┘
```

But within each digit, ×3 can overflow:

```verilog
// Single digit ×3 with carry propagation
wire [5:0] product = digit[3:0] * 3;  // 0-11 × 3 = 0-33
wire [3:0] duo_digit = product % 12;   // Remainder
wire [1:0] carry_out = product / 12;   // Quotient (0, 1, or 2)
```

**Components**:

- Per-digit: Small multiplier or LUT (12 entries)
- Carry propagation: Can carry 0, 1, or 2 to next digit
- Multi-digit adder for carry accumulation

#### 5. General Duodecimal Multiplier

```
┌──────────────────────────────────────────────────┐
│       Duodecimal Shift-and-Add Multiplier        │
│                                                  │
│  Digit multiplication table: 12×12 = 144 entries│
│  Each entry: {carry[3:0], product[3:0]}         │
│                                                  │
│  for each digit d in multiplier:                │
│      partial = multiplicand × d (LUT-based)     │
│      shift partial by digit position            │
│      accumulate with duodecimal adder           │
└──────────────────────────────────────────────────┘
```

**Digit Multiplication LUT**:

```
Example entries:
  B × B = 11 × 11 = 121 = 10×12 + 1 → carry=A, digit=1
  6 × 7 = 42 = 3×12 + 6 → carry=3, digit=6
```

---

## Comparison Summary

| Component | Base-2 | Base-10 (BCD) | Base-12 |
|-----------|--------|---------------|---------|
| **Bits/digit** | 1 | 4 | 4 |
| **Valid codes** | 0-1 | 0-9 | 0-11 |
| **Correction value** | N/A | +6 (or -10) | +4 (or -12) |
| **Carry threshold** | 2 | 10 | 12 |
| **Adder LUTs (4-digit)** | ~16 | ~40-48 | ~36-44 |
| **×N efficiency** | ×2 = shift | ×10 = digit shift | ×12 = digit shift |
| **Special multiplier** | Any (DSP) | ×10 (trivial) | ×3 (simple) |
| **Uses DSP blocks** | Yes | No (inefficient) | No (inefficient) |
| **Carry chain** | Native | Broken by correction | Broken by correction |

### FPGA Resource Estimates (16-bit equivalent ALU)

| Resource | Base-2 | Base-10 | Base-12 |
|----------|--------|---------|---------|
| **LUTs** | ~50-80 | ~150-200 | ~130-180 |
| **DSP48** | 1 | 0 | 0 |
| **Registers** | ~50 | ~80 | ~80 |
| **Max Frequency** | ~300+ MHz | ~150-200 MHz | ~150-200 MHz |
| **Add Latency** | 1 cycle | 1-2 cycles | 1-2 cycles |
| **Multiply Latency** | 1-3 cycles | 4-8 cycles | 4-6 cycles |

### Key Architectural Insight

Binary ALUs are dramatically more efficient on FPGAs because:

1. **Native carry chains**: FPGAs have dedicated fast carry logic optimized for binary
2. **DSP blocks**: Hardened binary multipliers (e.g., 25×18 in one cycle)
3. **No correction logic**: Binary never needs post-addition fixup
4. **Power-of-2 alignment**: Shifts are free (just rewiring)

BCD and duodecimal break these optimizations, requiring:

- Extra comparison logic per digit
- Correction adders that interrupt carry chains
- LUT-based multiplication instead of DSP blocks
- More complex carry propagation (carries can be > 1 in multiplication)
