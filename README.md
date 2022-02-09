## Featured Tags

### Windows images only

#### Collation: ```SQL_Latin1_General_CP1_CI_AS```

|Tag|Product|Version|Release date|
|--- |--- |--- |---|
|2012-latest|SQL Server 2012 Developer Edition|11.0.7507.2|2021-01-12|
|2014-latest|SQL Server 2014 Developer Edition|12.0.6433.1|2021-01-12|
|2016-latest|SQL Server 2016 Developer Edition|13.0.6404.1|2021-10-27|
|2017-latest|SQL Server 2017 Developer Edition|14.0.3430.2|2022-01-13|
|2019-latest|SQL Server 2019 Developer Edition|15.0.4198.2|2022-01-27 <span style="color:coral">*new</span>|

#### Collation: ```Polish_CI_AS```

|Tag|Product|Version|Release date|
|--- |--- |--- |---|
|2012-latest-pl|SQL Server 2012 Developer Edition|11.0.7507.2|2021-01-12|
|2014-latest-pl|SQL Server 2014 Developer Edition|12.0.6433.1|2021-01-12|
|2016-latest-pl|SQL Server 2016 Developer Edition|13.0.6404.1|2021-10-27|
|2017-latest-pl|SQL Server 2017 Developer Edition|14.0.3430.2|2022-01-13|
|2019-latest-pl|SQL Server 2019 Developer Edition|15.0.4198.2|2022-01-27 <span style="color:coral">*new</span>|

## Configuration
Requires the following environment flags:
- ```ACCEPT_EULA=Y```
- ```SA_PASSWORD=```

## Build

All images are based on [.NET Framework Runtime](https://hub.docker.com/_/microsoft-dotnet-framework-runtime) in particular:

|Product|Base image|
|--- |---|
|SQL Server 2012 Developer Edition|mcr.microsoft.com/dotnet/framework/runtime:3.5-windowsservercore-ltsc2022|
|SQL Server 2014 Developer Edition|mcr.microsoft.com/dotnet/framework/runtime:3.5-windowsservercore-ltsc2022|
|SQL Server 2016 Developer Edition|mcr.microsoft.com/dotnet/framework/runtime:3.5-windowsservercore-ltsc2022|
|SQL Server 2017 Developer Edition|mcr.microsoft.com/dotnet/framework/runtime:4.8-windowsservercore-ltsc2022|
|SQL Server 2019 Developer Edition|mcr.microsoft.com/dotnet/framework/runtime:4.8-windowsservercore-ltsc2022|

All images have been built and tested on Windows 11 [Version 10.0.22000.434].