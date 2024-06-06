for /f "delims=" %%i in ('powercfg -l ^| findstr "*" ^| findstr "GUID" ^| find /C "8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c"') do (set a=%%i)

if %a% equ 0 (

powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

)

SetResolution performance -noprompt