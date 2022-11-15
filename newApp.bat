@REM clean
@echo off
cls

@REM get Config app in configApp.ini
echo lecteur de fichier configApp.ini

for /f "tokens=1,2 delims==" %%a in (configApp.ini) do (
    if %%a==domainName set %%a=%%b
    if %%a==applicationName set %%a=%%b
)

echo domaine : %domainName%
echo application name : %applicationName%

@REM créer l'application
flutter create --org %domainName% %applicationName%


@REM go to lib
cd %applicationName%
cd lib

@REM clone componante
git clone https://github.com/BODESIGN/bo.git