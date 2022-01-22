FROM mcr.microsoft.com/dotnet/framework/runtime:3.5-windowsservercore-ltsc2019

RUN mkdir Setup \
&& powershell -Command (Invoke-WebRequest -Uri "https://download.microsoft.com/download/3/9/F/39F968FA-DEBB-4960-8F9E-0E7BB3035959/SQLEXPR_x64_ENU.exe" -OutFile C:/Setup/setup.exe) \
&& C:/Setup/setup.exe /q /ACTION=Install /FEATURES=SQLENGINE /INSTANCENAME=MSSQLSERVER /SECURITYMODE=SQL /SAPWD=qGH6RFvq /SQLSVCACCOUNT="NT AUTHORITY\System" /SQLSYSADMINACCOUNTS="BUILTIN\Administrators" /TCPENABLED=1 /IACCEPTSQLSERVERLICENSETERMS /SQLCOLLATION=Polish_CI_AS \
&& powershell -Command (Invoke-WebRequest -Uri "https://download.microsoft.com/download/b/2/3/b2335705-f220-403d-988d-8b688b66a0d1/SQLServer2014-KB4583462-x64.exe" -OutFile C:/Setup/patch.exe) \
&& C:/Setup/patch.exe /quiet /ACTION=Patch /INSTANCENAME=MSSQLSERVER /IACCEPTSQLSERVERLICENSETERMS \
&& rmdir /S /Q Setup

COPY start.ps1 /

ENV SA_PASSWORD=_ ACCEPT_EULA=_

CMD powershell -Command (C:/start.ps1 -SA_PASSWORD $env:SA_PASSWORD -ACCEPT_EULA $env:ACCEPT_EULA -Verbose)