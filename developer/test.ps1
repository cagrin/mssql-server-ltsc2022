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
    docker run --name test_image --memory 4g -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=$SA_PASSWORD" -p 51433:1433 -d cagrin/mssql-server-ltsc2022:$Tag
    Start-Sleep -Second 15
    Invoke-Sqlcmd -ServerInstance "localhost,51433" -Database "master" -Username "sa" -Password "$SA_PASSWORD" -Query "IF SERVERPROPERTY('ProductVersion') <> '$ProductVersion' RAISERROR ('ProductVersion is invalid', 16, 1)"
    Invoke-Sqlcmd -ServerInstance "localhost,51433" -Database "master" -Username "sa" -Password "$SA_PASSWORD" -Query "IF SERVERPROPERTY('Collation') <> '$Collation' RAISERROR ('Collation is invalid', 16, 1)"
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
Test-Version '2014-latest' '12.0.6439.10'
Test-Version '2016-latest' '13.0.7016.1'
Test-Version '2017-latest' '14.0.3451.2'
Test-Version '2019-latest' '15.0.4249.2'
Test-Version '2022-preview' '16.0.600.9'