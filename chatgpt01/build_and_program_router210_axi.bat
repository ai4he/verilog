@echo off
REM Build and program the Router 2&10 AXI overlay variant

echo ========================================
echo  Vivado AXI Build - Router 2&10 Variant
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

echo Sourcing Vivado environment...
call "%VIVADO_SETTINGS%"

echo.
echo Building Router 2&10 AXI overlay...
echo.

cd /d "%~dp0scripts"
vivado -mode batch -source make_bd_router210.tcl

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
echo Bitstream: router210_bench.bit
echo Hardware handoff: router210_bench.hwh
echo.
echo To program the device, run: program_router210_axi_only.bat
echo.
pause
