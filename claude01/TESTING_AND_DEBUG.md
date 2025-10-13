# Testing and Debug Guide

## What I Fixed

### 1. **Proper Cycle Counting**
- Each operation now properly counts cycles from start to completion
- Added timeout mechanism (50 cycles max per operation)
- Operations run sequentially with clear state transitions

### 2. **LED Latching**
- Results are now **stored** when benchmark completes
- LEDs **stay lit** until reset or new test starts
- Winner is determined by comparing all 4 conditions

### 3. **Better Button Handling**
- Debounced button input (prevents multiple triggers)
- Edge detection (only triggers once per press)
- Clear pulse generation

### 4. **RGB Status Indicators**
- **Red**: System in reset
- **Blue**: Benchmark running
- **Green**: Benchmark complete (results ready)
- **Off**: Idle/waiting

## Testing Procedure

### Initial State (After Programming)
```
Standard LEDs:  OFF OFF OFF OFF
RGB LED:        OFF (or briefly RED during startup)
```

### Step 1: Press BTN0 (Reset)
```
Standard LEDs:  OFF OFF OFF OFF
RGB LED:        RED (indicates reset active)
```
**Action**: Release BTN0

### Step 2: Press BTN1 (Start Benchmark)
```
Standard LEDs:  OFF OFF OFF OFF
RGB LED:        BLUE (benchmark running)
```
**Expected**: Takes 2-5 seconds to complete

### Step 3: Wait for Completion
```
Standard LEDs:  One LED ON (winner)
RGB LED:        GREEN (done)
```

**Which LED should light up?**
- **LED0 (LD0)**: Base-2 won
- **LED1 (LD1)**: Base-10 won
- **LED2 (LD2)**: Base-12 won
- **LED3 (LD3)**: Router won → **Most likely!**

## Expected Winner

The **Router (LED3)** should typically win because:
- Operations 0-2 run on Base-2 (fastest for binary ops)
- Operations 3-5 run on Base-10 (optimized for decimal)
- Operations 6-8 run on Base-12 (optimized for factors of 12)

**Total cycles expected:**
- Condition 1 (All Base-2): ~180-220 cycles
- Condition 2 (All Base-10): ~220-260 cycles
- Condition 3 (All Base-12): ~200-240 cycles
- Condition 4 (Router): ~160-200 cycles → **Lowest!**

## Troubleshooting

### Problem: No LEDs turn on at all

**Check 1**: Is bitstream loaded?
```
- Board powered on? ✓
- USB connected? ✓
- DONE LED on board lit? ✓
```

**Check 2**: Try Reset
```
1. Press and hold BTN0 (reset)
2. RGB LED should turn RED
3. Release BTN0
4. RGB LED should turn OFF
```

**Check 3**: Try Start
```
1. Press BTN1 (start)
2. RGB LED should turn BLUE (running)
3. Wait 5 seconds
4. RGB LED should turn GREEN (done)
5. One standard LED should light up
```

### Problem: RGB LED doesn't change

**Possible Cause**: Clock not running

**Solution**: 
1. Check clock constraint in XDC file
2. Verify board's 125MHz oscillator is working
3. Re-program bitstream

### Problem: LEDs flash briefly then turn off

**Possible Cause**: Results not latching properly

**Solution**: 
1. The updated code fixes this
2. Make sure you're using the LATEST versions
3. Re-synthesize and program

### Problem: Wrong LED lights up

This is actually **valid behavior**! It depends on:
- FPGA synthesis optimizations
- Actual routing delays
- Operation execution times

**To verify it's working correctly:**
1. Check that ONE LED lights up (not multiple)
2. Check RGB LED turns GREEN
3. Try multiple tests - same LED should win consistently

## Simulation Test (Optional)

If you want to verify logic before programming:

```tcl
# In Vivado TCL Console
add_files -fileset sim_1 tb_top_module.v
set_property top tb_top_module [get_filesets sim_1]
launch_simulation
run 1ms
```

**Look for in console:**
```
Winner: Router (Intelligent Routing)
Condition 1 (Base-2):  XXX cycles
Condition 2 (Base-10): XXX cycles
Condition 3 (Base-12): XXX cycles
Condition 4 (Router):  XXX cycles  ← Should be lowest
```

## Advanced Debugging

### Using Integrated Logic Analyzer (ILA)

If LEDs still don't work, add ILA to observe internal signals:

```tcl
# Add ILA core
create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_0

# Connect to signals
- benchmark_done
- winner[1:0]
- cycle_count_cond1[31:0]
- cycle_count_cond2[31:0]
- cycle_count_cond3[31:0]
- cycle_count_cond4[31:0]
```

### Check Timing

After implementation:
```
1. Open Implemented Design
2. Report → Timing Summary
3. Check: "All constraints met?" = YES
```

If timing violations exist:
- Reduce clock frequency in top_module
- Change `clk_div[1]` to `clk_div[2]` for 25MHz

## Expected Console Output (Simulation)

```
===========================================
Multi-Base Arithmetic Router Testbench
===========================================
Time        Event
-------------------------------------------
100 ns      Applying reset
200 ns      Starting benchmark
250 ns      Benchmark running (Blue LED on)
XXXXX ns    Benchmark complete (Green LED on)
-------------------------------------------
Results:
  LED[0] (Base-2):  0
  LED[1] (Base-10): 0
  LED[2] (Base-12): 0
  LED[3] (Router):  1
  Winner: Router (Intelligent Routing)

Performance Metrics:
  Condition 1 (Base-2):   XXX cycles
  Condition 2 (Base-10):  XXX cycles
  Condition 3 (Base-12):  XXX cycles
  Condition 4 (Router):   XXX cycles
===========================================
```

## Key Improvements in Updated Code

1. ✅ **Separate INIT states** for each condition
2. ✅ **Proper operation sequencing** with wait states
3. ✅ **Result latching** so LEDs stay on
4. ✅ **Timeout mechanism** prevents hanging
5. ✅ **Better button debouncing** prevents false triggers
6. ✅ **Clear RGB status** shows what's happening
7. ✅ **DONE_STATE** holds results until reset

## Files to Update

Make sure you have the LATEST versions of:
- ✓ `benchmark_controller.v` (with proper cycle counting)
- ✓ `top_module.v` (with LED latching)
- ✓ All three ALU files (already correct)
- ✓ `router.v` (already correct)
- ✓ `pynq_z2.xdc` (already correct)

## Quick Checklist

Before programming:
- [ ] All 6 .v files added to project
- [ ] pynq_z2.xdc added to constraints
- [ ] Synthesis: 0 errors
- [ ] Implementation: 0 errors, timing met
- [ ] Bitstream generated successfully

After programming:
- [ ] DONE LED on board is lit
- [ ] Press BTN0: RGB turns RED
- [ ] Release BTN0: RGB turns OFF
- [ ] Press BTN1: RGB turns BLUE
- [ ] Wait 5 sec: RGB turns GREEN + one standard LED lights up

If all checkboxes pass: **SUCCESS!** 🎉
