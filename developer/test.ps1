function Test-Image
{
    param
    (
        [string]$Tag,
        [string]$ProductVersion,
        [string]$Collation
    )

    Write-Host "Test-Image '$Tag' '$ProductVersion' '$Collation'" -ForegroundColor Magenta
    $MSSQL_SA_PASSWORD='A.794613'
    docker container stop test_image
    docker container rm test_image
    docker run --name test_image --memory 4g -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=$MSSQL_SA_PASSWORD" -p 51433:1433 -d cagrin/mssql-server-ltsc2022:$Tag
    Start-Sleep -Second 15
    Invoke-Sqlcmd -TrustServerCertificate -ServerInstance "localhost,51433" -Database "master" -Username "sa" -Password "$MSSQL_SA_PASSWORD" -Query "IF SERVERPROPERTY('ProductVersion') <> '$ProductVersion' RAISERROR ('ProductVersion is invalid', 16, 1)"
    Invoke-Sqlcmd -TrustServerCertificate -ServerInstance "localhost,51433" -Database "master" -Username "sa" -Password "$MSSQL_SA_PASSWORD" -Query "IF SERVERPROPERTY('Collation') <> '$Collation' RAISERROR ('Collation is invalid', 16, 1)"
}

function Test-Version
{
    param
    (
        [string]$Tag,
        [string]$ProductVersion
    )

    Test-Image $Tag $ProductVersion 'SQL_Latin1_General_CP1_CI_AS'
    Test-Image $Tag'-pl' $ProductVersion 'Polish_CI_AS'
    Test-Image $Tag'-ua' $ProductVersion 'Ukrainian_CI_AS'

    docker container stop test_image
    docker container rm test_image
}

Test-Version '2012-latest' '11.0.7507.2'
Test-Version '2014-latest' '12.0.6444.4'
Test-Version '2016-latest' '13.0.7024.30'
Test-Version '2017-latest' '14.0.3460.9'
Test-Version '2019-latest' '15.0.4316.3'
Test-Version '2022-latest' '16.0.4055.4'