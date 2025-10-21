@echo off
REM Batch script to program FPGA with existing standalone bitstream
REM This skips the build process and only programs the device

echo ========================================
echo  Program FPGA with Standalone Design
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
set BITSTREAM_PATH=scripts\vivado_pynq_router_standalone\pynq_router_standalone.runs\impl_1\top_router_benchmark.bit
if not exist "%~dp0%BITSTREAM_PATH%" (
    echo ERROR: Bitstream not found: %BITSTREAM_PATH%
    echo Please run build_and_program_standalone.bat first to generate the bitstream.
    pause
    exit /b 1
)

echo Sourcing Vivado environment...
call "%VIVADO_SETTINGS%"

echo.
echo Programming FPGA with existing bitstream: %BITSTREAM_PATH%
echo.

REM Change to scripts directory and run programming script
cd /d "%~dp0scripts"
vivado -mode batch -source program_standalone_only.tcl

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
echo The standalone router benchmark is now running on your PYNQ-Z2.
echo - Button 0: Reset
echo - LEDs: Show router status
echo.
pause
