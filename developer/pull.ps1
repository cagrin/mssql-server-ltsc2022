function Invoke-PullImage
{
    param
    (
        [string]$Tag
    )

    docker pull cagrin/mssql-server-ltsc2022:$Tag
}

function Invoke-PullVersion
{
    param
    (
        [string]$Tag
    )

    Invoke-PullImage $Tag
    Invoke-PullImage $Tag'-pl'
    Invoke-PullImage $Tag'-ua'
}

#Invoke-PullVersion '2012-latest'
#Invoke-PullVersion '2014-latest'
#Invoke-PullVersion '2016-latest'
Invoke-PullVersion '2017-latest'
Invoke-PullVersion '2019-latest'
Invoke-PullVersion '2022-latest'