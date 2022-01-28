function Invoke-ScanImage
{
    param
    (
        [string]$Tag
    )

    docker scan cagrin/mssql-server-oldies:$Tag
}

Invoke-ScanImage '2012-latest'
Invoke-ScanImage '2014-latest'
Invoke-ScanImage '2016-latest'
Invoke-ScanImage '2017-latest'
Invoke-ScanImage '2019-latest'

Invoke-ScanImage '2012-latest-pl'
Invoke-ScanImage '2014-latest-pl'
Invoke-ScanImage '2016-latest-pl'
Invoke-ScanImage '2017-latest-pl'
Invoke-ScanImage '2019-latest-pl'