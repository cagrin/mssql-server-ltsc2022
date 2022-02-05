function Test-Image
{
    param
    (
        [string]$Tag,
        [string]$ProductVersion,
        [string]$Collation
    )

    Write-Host "Test-Image '$Tag' '$ProductVersion' '$Collation'" -ForegroundColor Magenta
    $SA_PASSWORD='A.794613'
    docker container stop test_image
    docker container rm test_image
    docker run --name test_image -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=$SA_PASSWORD" -p 51433:1433 --memory 4g -d cagrin/mssql-server-oldies:$Tag
    Start-Sleep -Second 10
    Invoke-Sqlcmd -ServerInstance "localhost,51433" -Database "master" -Username "sa" -Password "$SA_PASSWORD" -Query "IF SERVERPROPERTY('ProductVersion') <> '$ProductVersion' RAISERROR ('ProductVersion is invalid', 16, 1)"
    Invoke-Sqlcmd -ServerInstance "localhost,51433" -Database "master" -Username "sa" -Password "$SA_PASSWORD" -Query "IF SERVERPROPERTY('Collation') <> '$Collation' RAISERROR ('Collation is invalid', 16, 1)"
}

Test-Image '2012-latest' '11.0.7507.2' 'SQL_Latin1_General_CP1_CI_AS'
Test-Image '2014-latest' '12.0.6433.1' 'SQL_Latin1_General_CP1_CI_AS'
Test-Image '2016-latest' '13.0.6404.1' 'SQL_Latin1_General_CP1_CI_AS'
Test-Image '2017-latest' '14.0.3430.2' 'SQL_Latin1_General_CP1_CI_AS'
Test-Image '2019-latest' '15.0.4198.2' 'SQL_Latin1_General_CP1_CI_AS'

Test-Image '2012-latest-pl' '11.0.7507.2' 'Polish_CI_AS'
Test-Image '2014-latest-pl' '12.0.6433.1' 'Polish_CI_AS'
Test-Image '2016-latest-pl' '13.0.6404.1' 'Polish_CI_AS'
Test-Image '2017-latest-pl' '14.0.3430.2' 'Polish_CI_AS'
Test-Image '2019-latest-pl' '15.0.4198.2' 'Polish_CI_AS'

docker container stop test_image
docker container rm test_image