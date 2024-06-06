@echo off
setlocal

REM 获取电池状态
for /F "skip=1 tokens=2 delims==" %%G in ('wmic path Win32_Battery Get BatteryStatus /value') do (
    set "battery_status=%%G"
)

REM 检查电池状态
if "%battery_status%"=="2" (
    REM 充电状态，运行performance.bat
    call performance.bat
) else (
    REM 非充电状态，运行powersave.bat
    call powersave.bat
)

endlocal