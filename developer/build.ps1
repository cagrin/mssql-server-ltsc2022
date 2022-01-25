function Build-Image
{
    param
    (
        [string]$Tag,
        [string]$WorkingFolder,
        [string]$Collation
    )

    docker build -m 4g -t cagrin/mssql-server-oldies:$Tag --build-arg SQLCOLLATION=$Collation ./$WorkingFolder
}

Build-Image '2012-latest' '2012-latest' 'SQL_Latin1_General_CP1_CI_AS'
Build-Image '2014-latest' '2014-latest' 'SQL_Latin1_General_CP1_CI_AS'
Build-Image '2016-latest' '2016-latest' 'SQL_Latin1_General_CP1_CI_AS'
Build-Image '2017-latest' '2017-latest' 'SQL_Latin1_General_CP1_CI_AS'
Build-Image '2019-latest' '2019-latest' 'SQL_Latin1_General_CP1_CI_AS'

Build-Image '2012-latest-pl' '2012-latest' 'Polish_CI_AS'
Build-Image '2014-latest-pl' '2014-latest' 'Polish_CI_AS'
Build-Image '2016-latest-pl' '2016-latest' 'Polish_CI_AS'
Build-Image '2017-latest-pl' '2017-latest' 'Polish_CI_AS'
Build-Image '2019-latest-pl' '2019-latest' 'Polish_CI_AS'