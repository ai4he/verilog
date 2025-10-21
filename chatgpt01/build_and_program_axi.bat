@echo off
REM Batch script to build and program FPGA using AXI overlay (make_bd.tcl)
REM This creates a Zynq PS + AXI-Lite design with router_bench_axi

echo ========================================
echo  Vivado AXI Build and Program Pipeline
echo ========================================
echo.

REM Set Vivado paths
set VIVADO_BIN=F:\Xilinx\2025.1\Vivado\bin
set VIVADO_ROOT=F:\Xilinx\2025.1\Vivado
set VIVADO_SETTINGS=%VIVADO_ROOT%\settings64.bat

REM Check if Vivado exists
if not exist "%VIVADO_BIN%\vivado.bat" (
    echo ERROR: Vivado not found at %VIVADO_BIN%
    echo Please check the Vivado installation path.
    pause
    exit /b 1
)

echo Sourcing Vivado environment...
call "%VIVADO_SETTINGS%"

echo.
echo Starting AXI build process...
echo This will create the block design, synthesize, implement, and generate bitstream.
echo.

REM Change to scripts directory and run make_bd.tcl
cd /d "%~dp0scripts"
vivado -mode batch -source make_bd.tcl

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Build failed!
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo ========================================
echo  Build Complete!
echo ========================================
echo Bitstream: router_bench.bit
echo Hardware handoff: router_bench.hwh
echo.
echo To program the device, run: program_axi_only.bat
echo.
pause
