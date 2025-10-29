# Fixes for PYNQ Z2 Unresponsiveness Issue

## Problem Description
When executing `start_benchmark()` from the Jupyter notebook, the PYNQ Z2 board becomes completely unresponsive, requiring a hard reset. The Jupyter server crashes and displays "This site can't be reached".

## Root Cause Analysis

### Issue #1: Auto-Start Race Condition (CRITICAL)
**File**: `src/router_bench_axi.v:142`

The design included an auto-start feature that automatically triggers the benchmark ~524μs (65,535 cycles @ 125MHz) after the PL clock stabilizes. This caused the benchmark to execute **before the Linux kernel and PYNQ drivers were fully initialized**, leading to:
- AXI transactions on GP0 bus before PS was ready
- Deadlock in the AXI interconnect
- Corruption of memory-mapped I/O subsystem
- Complete system lockup

### Issue #2: AXI Protocol Violation (CRITICAL)
**File**: `src/router_bench_axi.v:90-91, 95`

The AXI4-Lite handshake implementation violated the specification:

**Broken Logic:**
```verilog
s_axi_awready <= ~s_axi_awready && s_axi_awvalid;  // WRONG!
s_axi_wready  <= ~s_axi_wready  && s_axi_wvalid;   // WRONG!
s_axi_arready <= ~s_axi_arready && s_axi_arvalid;  // WRONG!
```

**Problem:**
- This "toggle" logic causes READY signals to pulse for only one cycle
- AXI4-Lite requires READY to remain asserted until handshake completes
- If the PS misses the single-cycle window, transactions hang indefinitely
- Results in AXI bus deadlock and system-wide lockup

## Implemented Fixes

### Fix #1: Disabled Auto-Start
**Location**: `src/router_bench_axi.v:144`

```verilog
// BEFORE:
wire start = autostart_pulse | start_pulse;

// AFTER:
wire start = start_pulse;  // autostart_pulse disabled
```

**Benefit**: Ensures benchmark only runs when explicitly triggered via Python, after all system components are initialized.

### Fix #2: AXI4-Lite Compliant Handshake
**Location**: `src/router_bench_axi.v:82-125`

Replaced toggle-based ready signals with proper AXI4-Lite protocol:

**Write Channels:**
- `awready` and `wready` assert high on reset
- Deassert after handshake completes
- Reassert only when write transaction fully completes (after BREADY handshake)

**Read Channels:**
- `arready` asserts high on reset
- Deasserts after address handshake
- Reasserts after read data handshake completes (RVALID && RREADY)

**Benefit**: Eliminates bus deadlocks by ensuring proper AXI protocol compliance.

## Testing Instructions

### 1. Rebuild the Bitstream
```batch
cd chatgpt01
build_and_program_axi.bat
```

### 2. Copy Files to PYNQ
Copy the updated files from `chatgpt01/`:
- `router_bench.bit`
- `router_bench.hwh`

To your PYNQ Z2 board (same directory as the notebook).

### 3. Test the Notebook
Run `router_benchmark.ipynb` cells in order:
- Cell 1: Load overlay (should complete without issues)
- Cell 2: Initialize MMIO (should succeed)
- Cell 4: Run benchmark (should complete without hanging)
- Cell 5: Multiple runs (should work reliably)

### Expected Behavior
- Board should remain responsive after bitstream load
- Jupyter server should NOT crash
- `start_benchmark()` should complete in ~2 seconds
- LEDs should illuminate showing the winner
- Multiple consecutive runs should work without issues

## Files Modified
- `chatgpt01/src/router_bench_axi.v` - Core fixes applied
- `chatgpt01/FIXES_UNRESPONSIVENESS.md` - This documentation

## Additional Notes

### Auto-Start Feature
The auto-start feature can be re-enabled in the future if needed, but would require:
1. Longer delay (at least 5-10 seconds) to ensure PS fully boots
2. Proper synchronization with PS reset signals
3. Testing to ensure it doesn't interfere with overlay loading

### Timing
The design still uses an external 125MHz clock (`sysclk`). For even more robustness, consider migrating to use PS FCLK_CLK0 in a future update.

### Verification
To verify the fixes work:
1. System should boot normally
2. LEDs should remain OFF until `start_benchmark()` is called
3. After calling `start_benchmark()`, one LED should illuminate
4. Jupyter server should remain accessible

## Revision History
- 2025-10-29: Initial fixes for unresponsiveness issue (auto-start + AXI handshake)
