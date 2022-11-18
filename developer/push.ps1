function Push-Image
{
    param
    (
        [string]$Tag
    )

    docker push cagrin/mssql-server-ltsc2022:$Tag
}

function Push-Version
{
    param
    (
        [string]$Tag
    )

    Push-Image $Tag
    Push-Image $Tag'-pl'
    Push-Image $Tag'-ua'
}

Push-Version '2012-latest'
Push-Version '2014-latest'
Push-Version '2016-latest'
Push-Version '2017-latest'
Push-Version '2019-latest'
Push-Version '2022-latest'