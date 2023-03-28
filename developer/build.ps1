function Build-Image
{
    param
    (
        [string]$Tag,
        [string]$WorkingFolder,
        [string]$Collation
    )

    docker build --memory 4g --tag cagrin/mssql-server-ltsc2022:$Tag --build-arg SQLCOLLATION=$Collation ./$WorkingFolder
}

function Build-Version
{
    param
    (
        [string]$WorkingFolder
    )

    Build-Image $WorkingFolder      $WorkingFolder 'SQL_Latin1_General_CP1_CI_AS'
    Build-Image $WorkingFolder'-pl' $WorkingFolder 'Polish_CI_AS'
    Build-Image $WorkingFolder'-ua' $WorkingFolder 'Ukrainian_CI_AS'
}

#Build-Version '2012-latest'
#Build-Version '2014-latest'
#Build-Version '2016-latest'
Build-Version '2017-latest'
Build-Version '2019-latest'
Build-Version '2022-latest'