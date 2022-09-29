[![version](https://img.shields.io/badge/docker%20last%20pushed-2022--09--29-blue)](https://hub.docker.com/repository/docker/cagrin/mssql-server-ltsc2022/tags)
[![docker pulls](https://shields.io/docker/pulls/cagrin/mssql-server-ltsc2022)](https://hub.docker.com/repository/docker/cagrin/mssql-server-ltsc2022)


## Featured Tags

### Windows images only

|Tags|Collation|
|--- |---|
|2012-latest<br/>2014-latest<br/>2016-latest<br/>2017-latest<br/>2019-latest<br/>2022-preview|```SQL_Latin1_General_CP1_CI_AS```|
|2012-latest-pl<br/>2014-latest-pl<br/>2016-latest-pl<br/>2017-latest-pl<br/>2019-latest-pl<br/>2022-preview-pl|```Polish_CI_AS``` <img src="https://flagicons.lipis.dev/flags/4x3/pl.svg" width="16">|
|2012-latest-ua<br/>2014-latest-ua<br/>2016-latest-ua<br/>2017-latest-ua<br/>2019-latest-ua<br/>2022-preview-ua|```Ukrainian_CI_AS``` <img src="https://flagicons.lipis.dev/flags/4x3/ua.svg" width="16">|

### SQL Server Developer Edition only

|Tags prefix|Product|Version|Release date|
|--- |--- |--- |---|
|2012-latest...|SQL Server 2012 SP4|11.0.7507.2|2021-01-12|
|2014-latest...|SQL Server 2014 SP3 CU4|12.0.6439.10|2022-06-14|
|2016-latest...|SQL Server 2016 SP3|13.0.7016.1|2022-06-14|
|2017-latest...|SQL Server 2017 CU31|14.0.3456.2|2022-09-20|
|2019-latest...|SQL Server 2019 CU18|15.0.4261.1|2022-09-28|
|2022-preview...|SQL Server 2022 RC0|16.0.900.6|2022-08-23|

## Configuration
Requires the following environment flags:
- ```ACCEPT_EULA=Y```
- ```SA_PASSWORD=```

## Build

All images are based on [.NET Framework Runtime](https://hub.docker.com/_/microsoft-dotnet-framework-runtime) in particular:

|Product|Base image|
|--- |---|
|SQL Server 2012<br/>SQL Server 2014<br/>SQL Server 2016|mcr.microsoft.com/dotnet/framework/runtime:<br/>3.5-20220614-windowsservercore-ltsc2022|
|SQL Server 2017<br/>SQL Server 2019<br/>SQL Server 2022|mcr.microsoft.com/dotnet/framework/runtime:<br/>4.8-20220809-windowsservercore-ltsc2022|

Built and tested on Windows 11 [Version 10.0.22000.978].