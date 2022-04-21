[![version](https://img.shields.io/badge/docker%20last%20pushed-2022--04--21-blue)](https://hub.docker.com/repository/docker/cagrin/mssql-server-ltsc2022/tags)
[![docker pulls](https://shields.io/docker/pulls/cagrin/mssql-server-ltsc2022)](https://hub.docker.com/repository/docker/cagrin/mssql-server-ltsc2022)


## Featured Tags

### Windows images only

|Tags|Collation|
|--- |---|
|2012-latest<br/>2014-latest<br/>2016-latest<br/>2017-latest<br/>2019-latest|```SQL_Latin1_General_CP1_CI_AS```|
|2012-latest-pl<br/>2014-latest-pl<br/>2016-latest-pl<br/>2017-latest-pl<br/>2019-latest-pl|```Polish_CI_AS``` <img src="https://flagicons.lipis.dev/flags/4x3/pl.svg" width="16">|
|2012-latest-ua<br/>2014-latest-ua<br/>2016-latest-ua<br/>2017-latest-ua<br/>2019-latest-ua|```Ukrainian_CI_AS``` <img src="https://flagicons.lipis.dev/flags/4x3/ua.svg" width="16">|

### SQL Server Developer Edition only

|Tags prefix|Product|Version|Release date|
|--- |--- |--- |---|
|2012-latest...|SQL Server 2012 SP4|11.0.7507.2|2021-01-12|
|2014-latest...|SQL Server 2014 SP3 CU4|12.0.6433.1|2021-01-12|
|2016-latest...|SQL Server 2016 SP3|13.0.6404.1|2021-10-27|
|2017-latest...|SQL Server 2017 CU29|14.0.3436.1|2022-03-30|
|2019-latest...|SQL Server 2019 CU16|15.0.4223.1|2022-04-18|

## Configuration
Requires the following environment flags:
- ```ACCEPT_EULA=Y```
- ```SA_PASSWORD=```

## Build

All images are based on [.NET Framework Runtime](https://hub.docker.com/_/microsoft-dotnet-framework-runtime) in particular:

|Product|Base image|Relase date|
|--- |--- |---|
|SQL Server 2012<br/>SQL Server 2014<br/>SQL Server 2016|mcr.microsoft.com/dotnet/framework/runtime:<br/>3.5-windowsservercore-ltsc2022|2022-04-12|
|SQL Server 2017<br/>SQL Server 2019|mcr.microsoft.com/dotnet/framework/runtime:<br/>4.8-windowsservercore-ltsc2022|2022-04-12|

Built and tested on Windows 11 [Version 10.0.22000.434].