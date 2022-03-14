function Push-Image
{
    param
    (
        [string]$Tag
    )

    docker push cagrin/mssql-server-ltsc2022:$Tag
}

Push-Image '2012-latest'
Push-Image '2014-latest'
Push-Image '2016-latest'
Push-Image '2017-latest'
Push-Image '2019-latest'

Push-Image '2012-latest-pl'
Push-Image '2014-latest-pl'
Push-Image '2016-latest-pl'
Push-Image '2017-latest-pl'
Push-Image '2019-latest-pl'

Push-Image '2012-latest-ua'
Push-Image '2014-latest-ua'
Push-Image '2016-latest-ua'
Push-Image '2017-latest-ua'
Push-Image '2019-latest-ua'