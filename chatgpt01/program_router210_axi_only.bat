@echo off
REM Program FPGA with Router 2&10 AXI overlay bitstream

echo ========================================
echo  Program FPGA - Router 2&10 Overlay
echo ========================================
echo.

set VIVADO_BIN=F:\Xilinx\2025.1\Vivado\bin
set VIVADO_ROOT=F:\Xilinx\2025.1\Vivado
set VIVADO_SETTINGS=%VIVADO_ROOT%\settings64.bat

if not exist "%VIVADO_BIN%\vivado.bat" (
    echo ERROR: Vivado not found at %VIVADO_BIN%
    echo Please update the path variables at the top of this script.
    pause
    exit /b 1
)

if not exist "%~dp0router210_bench.bit" (
    echo ERROR: Bitstream not found: router210_bench.bit
    echo Please run build_and_program_router210_axi.bat first.
    pause
    exit /b 1
)

echo Sourcing Vivado environment...
call "%VIVADO_SETTINGS%"

echo.
echo Programming FPGA with router210_bench.bit...
echo.

cd /d "%~dp0scripts"
vivado -mode batch -source program_axi_bitstream_router210.tcl

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
echo Router 2&10 overlay is now running.
echo.
pause
