cd 2012-latest
docker build -m 4g -t cagrin/mssql-server-oldies:2012-latest --file dockerfile .
docker build -m 4g -t cagrin/mssql-server-oldies:2012-latest-pl --file dockerfile_pl .
cd..
cd 2014-latest
docker build -m 4g -t cagrin/mssql-server-oldies:2014-latest --file dockerfile .
docker build -m 4g -t cagrin/mssql-server-oldies:2014-latest-pl --file dockerfile_pl .
cd..
cd 2016-latest
docker build -m 4g -t cagrin/mssql-server-oldies:2016-latest --file dockerfile .
docker build -m 4g -t cagrin/mssql-server-oldies:2016-latest-pl --file dockerfile_pl .
cd..