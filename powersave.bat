for /f "delims=" %%i in ('powercfg -l ^| findstr "*" ^| findstr "GUID" ^| find /C "a1841308-3541-4fab-bc81-f71556f20b4a"') do (set a=%%i)

if %a% equ 0 (

powercfg -setactive a1841308-3541-4fab-bc81-f71556f20b4a

)

SetResolution powersave -noprompt

C:\Users\vincent\AppData\Local\Microsoft\WindowsApps\EnergyStarX.exe