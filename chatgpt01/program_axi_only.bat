@echo off
REM Batch script to program FPGA with existing AXI bitstream
REM This skips the build process and only programs the device

echo ========================================
echo  Program FPGA with AXI Overlay
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

REM Check if bitstream exists
if not exist "%~dp0router_bench.bit" (
    echo ERROR: Bitstream not found: router_bench.bit
    echo Please run build_and_program_axi.bat first to generate the bitstream.
    pause
    exit /b 1
)

echo Sourcing Vivado environment...
call "%VIVADO_SETTINGS%"

echo.
echo Programming FPGA with existing bitstream: router_bench.bit
echo.

REM Change to scripts directory and run program script
cd /d "%~dp0scripts"
vivado -mode batch -source program_axi_bitstream.tcl

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Programming failed!
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo ========================================
echo  Programming Complete!
echo ========================================
echo The AXI router benchmark is now running on your PYNQ-Z2.
echo Use the Jupyter notebook to access it via AXI-Lite.
echo.
pause
