@REM clean
@echo off
cls


for /f "tokens=1,2 delims==" %%a in (configApp.ini) do (
    if %%a==domainName set %%a=%%b
    if %%a==applicationName set %%a=%%b
)

echo domaine : %domainName%
echo application name : %applicationName%


@REM go to lib
cd %applicationName%
code .

exit