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
cd 2017-latest
docker build -m 4g -t cagrin/mssql-server-oldies:2017-latest --file dockerfile .
docker build -m 4g -t cagrin/mssql-server-oldies:2017-latest-pl --file dockerfile_pl .
cd..
cd 2019-latest
docker build -m 4g -t cagrin/mssql-server-oldies:2019-latest --file dockerfile .
docker build -m 4g -t cagrin/mssql-server-oldies:2019-latest-pl --file dockerfile_pl .
cd..