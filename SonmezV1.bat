::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDdxYiu0E1eeA6YX/Ofr0/OGuOnMWEbudbPY1bqaJe4Hp0jle5cq03dflt9BHwJLahemUV1i+j4a4TzLPsST0w==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZks0
::ZQ05rAF9IBncCkqN+0xwdVsFAlTi
::ZQ05rAF9IAHYFVzEqQIDJxVZSR60bQs=
::eg0/rx1wNQPfEVWB+kM9LVsJDDeNMma/HNU=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWGqL+k81Mns=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE0VA1JltnQwqPOXHa
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDdxYiu0E1eeA6YX/Ofr09mIrEAYTtRuNorD39Q=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
echo Hello Welcome to SonmezV1!!!
echo     E R E N S O N M E Z
pause

set /p name=Please enter your name: 
echo Hello, %name%! Just wait!!!

echo Please press enter to see your computer information.

@echo off
echo System Information > PcinfoSonmezV1.txt

echo [Operating System Information] >> PcinfoSonmezV1.txt
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" >> PcinfoSonmezV1.txt

echo [Computer and User Name] >> PcinfoSonmezV1.txt
echo Computer Name: %COMPUTERNAME% >> PcinfoSonmezV1.txt
echo User Name: %USERNAME% >> PcinfoSonmezV1.txt

echo [CPU Information] >> PcinfoSonmezV1.txt
wmic cpu get name,numberofcores,numberoflogicalprocessors >> PcinfoSonmezV1.txt

echo [Video Card] >> PcinfoSonmezV1.txt
wmic path win32_VideoController get name >> PcinfoSonmezV1.txt

echo [Disk Information] >> PcinfoSonmezV1.txt
wmic logicaldisk get name,size,freespace,filesystem >> PcinfoSonmezV1.txt

echo [Memory Information] >> PcinfoSonmezV1.txt
systeminfo | findstr /C:"Total Physical Memory" /C:"Available Physical Memory" >> PcinfoSonmezV1.txt

echo [BIOS Information] >> PcinfoSonmezV1.txt
wmic bios get manufacturer, smbiosbiosversion >> PcinfoSonmezV1.txt


echo [IP and Network Information] >> PcinfoSonmezV1.txt
ipconfig >> PcinfoSonmezV1.txt


echo Information has been written to PcinfoSonmezV1.txt
```

Save the above code as a `.bat` file (for example, `get_pc_info.bat`). When you run this batch file, it will collect various system information and write it to `PcinfoSonmezV1.txt`.

@echo off
start notepad "PcinfoSonmezV1.txt"

