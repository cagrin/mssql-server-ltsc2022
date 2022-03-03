[![version](https://img.shields.io/badge/docker%20last%20pushed-2022--02--22-blue)](https://hub.docker.com/repository/docker/cagrin/mssql-server-ltsc2022/tags)
[![docker pulls](https://img.shields.io/docker/pulls/cagrin/mssql-server-ltsc2022)](https://hub.docker.com/repository/docker/cagrin/mssql-server-ltsc2022)


## Featured Tags

### Windows images only

#### Collation: ```SQL_Latin1_General_CP1_CI_AS```

|Tag|Product|Version|Release date|
|--- |--- |--- |---|
|2012-latest|SQL Server 2012 Developer Edition|11.0.7507.2|2021-01-12|
|2014-latest|SQL Server 2014 Developer Edition|12.0.6433.1|2021-01-12|
|2016-latest|SQL Server 2016 Developer Edition|13.0.6404.1|2021-10-27|
|2017-latest|SQL Server 2017 Developer Edition|14.0.3430.2|2022-01-13|
|2019-latest|SQL Server 2019 Developer Edition|15.0.4198.2|2022-01-27|

#### Collation: ```Polish_CI_AS```

|Tag|Product|Version|Release date|
|--- |--- |--- |---|
|2012-latest-pl|SQL Server 2012 Developer Edition|11.0.7507.2|2021-01-12|
|2014-latest-pl|SQL Server 2014 Developer Edition|12.0.6433.1|2021-01-12|
|2016-latest-pl|SQL Server 2016 Developer Edition|13.0.6404.1|2021-10-27|
|2017-latest-pl|SQL Server 2017 Developer Edition|14.0.3430.2|2022-01-13|
|2019-latest-pl|SQL Server 2019 Developer Edition|15.0.4198.2|2022-01-27|

## Configuration
Requires the following environment flags:
- ```ACCEPT_EULA=Y```
- ```SA_PASSWORD=```

## Build

All images are based on [.NET Framework Runtime](https://hub.docker.com/_/microsoft-dotnet-framework-runtime) in particular:

|Product|Base image|Relase date|
|--- |--- |---|
|SQL Server 2012<br/>SQL Server 2014<br/>SQL Server 2016|mcr.microsoft.com/dotnet/framework/runtime:<br/>3.5-windowsservercore-ltsc2022|2022-02-10|
|SQL Server 2017<br/>SQL Server 2019|mcr.microsoft.com/dotnet/framework/runtime:<br/>4.8-windowsservercore-ltsc2022|2022-02-10|

Built and tested on Windows 11 [Version 10.0.22000.434].