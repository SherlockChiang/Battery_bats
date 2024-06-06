for /f "delims=" %%i in ('powercfg -l ^| findstr "*" ^| findstr "GUID" ^| find /C "381b4222-f694-41f0-9685-ff5bb260df2e"') do (set a=%%i)

if %a% equ 0 (

powercfg -setactive 381b4222-f694-41f0-9685-ff5bb260df2e

)