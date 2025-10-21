@echo off
REM Batch script to build and program FPGA using standalone PL design (no AXI)
REM This creates a pure PL design with top_router_benchmark (no Zynq PS)

echo ========================================
echo  Vivado Standalone Build and Program
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
echo Starting standalone build process...
echo This will build the PL-only design with sysclk, buttons, and LEDs.
echo.

REM Change to scripts directory and run build_standalone.tcl
cd /d "%~dp0scripts"
vivado -mode batch -source build_standalone.tcl

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Build or programming failed!
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo ========================================
echo  Build and Programming Complete!
echo ========================================
echo The standalone design is now running on your FPGA.
echo - Uses PL clock (125MHz from board)
echo - Button 0 controls reset
echo - LEDs show router benchmark status
echo.
pause
