msiexec /x {B7C5EA94-B96A-41F5-BE95-25D78B486678} /qn 
\\bluestonenas\BluestoneNASShare\Splashtop.exe msiexec /qn /x setup.msi

REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Splashtop Inc." /f > nul 2> nul
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Splashtop Inc." /f > nul 2> nul

RMDIR /S /Q "C:\Program Files (x86)\Splashtop\Splashtop Remote\Server" > nul 2> nul
RMDIR /S /Q "C:\ProgramData\Splashtop\Temp" > nul 2> nul

sc stop "SplashtopRemoteService"
sc delete "SplashtopRemoteService"

sc stop "SSUService"
sc delete "SSUService"

RMDIR /S /Q "C:\ProgramData\Splashtop\Splashtop Software Updater" > nul 2> nul
RMDIR /S /Q "C:\Program Files (x86)\Splashtop\Splashtop Software Updater" > nul 2> nul

\\bluestonenas\BluestoneNASShare\Splashtop.exeCleanUpInstaller.exe
