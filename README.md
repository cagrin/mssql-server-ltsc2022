[![version](https://img.shields.io/badge/docker%20last%20pushed-2023--01--12-blue)](https://hub.docker.com/repository/docker/cagrin/mssql-server-ltsc2022/tags)
[![docker pulls](https://shields.io/docker/pulls/cagrin/mssql-server-ltsc2022)](https://hub.docker.com/repository/docker/cagrin/mssql-server-ltsc2022)


## Featured Tags

### Windows images only

|Tags|Collation|
|--- |---|
|2022-latest<br/>2019-latest<br/>2017-latest<br/>2016-latest<br/>2014-latest<br/>2012-latest|```SQL_Latin1_General_CP1_CI_AS```|
|2022-latest-pl<br/>2019-latest-pl<br/>2017-latest-pl<br/>2016-latest-pl<br/>2014-latest-pl<br/>2012-latest-pl|```Polish_CI_AS``` <img src="https://flagicons.lipis.dev/flags/4x3/pl.svg" width="16">|
|2022-latest-ua<br/>2019-latest-ua<br/>2017-latest-ua<br/>2016-latest-ua<br/>2014-latest-ua<br/>2012-latest-ua|```Ukrainian_CI_AS``` <img src="https://flagicons.lipis.dev/flags/4x3/ua.svg" width="16">|

### SQL Server Developer Edition only

|Tags prefix|Product|Version|Release date|
|--- |--- |--- |---|
|2022-latest...|SQL Server 2022 RTM|16.0.1000.6|2022-11-16|
|2019-latest...|SQL Server 2019 CU19|15.0.4298.1|2023-02-16|
|2017-latest...|SQL Server 2017 CU31|14.0.3456.2|2022-09-20|
|2016-latest...|SQL Server 2016 SP3|13.0.7016.1|2022-06-14|
|2014-latest...|SQL Server 2014 SP3 CU4|12.0.6439.10|2022-06-14|
|2012-latest...|SQL Server 2012 SP4|11.0.7507.2|2021-01-12|

## Configuration
Requires the following environment flags:
- ```ACCEPT_EULA=Y```
- ```SA_PASSWORD=```

## Build

All images are based on [.NET Framework Runtime](https://hub.docker.com/_/microsoft-dotnet-framework-runtime) in particular:

|Product|Base image|
|--- |---|
|SQL Server 2022<br/>SQL Server 2019<br/>SQL Server 2017|mcr.microsoft.com/dotnet/framework/runtime:<br/>4.8.1-20221213-windowsservercore-ltsc2022|
|SQL Server 2016<br/>SQL Server 2014<br/>SQL Server 2012|mcr.microsoft.com/dotnet/framework/runtime:<br/>3.5-20230110-windowsservercore-ltsc2022|

Built and tested on Windows 11 [Version 10.0.22000.1455].