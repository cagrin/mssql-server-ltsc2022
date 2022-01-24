cd 2012-latest
docker build -m 4g -t cagrin/mssql-server-oldies:2012-latest --build-arg SQLCOLLATION=SQL_Latin1_General_CP1_CI_AS .
docker build -m 4g -t cagrin/mssql-server-oldies:2012-latest-pl --build-arg SQLCOLLATION=Polish_CI_AS .
cd..
cd 2014-latest
docker build -m 4g -t cagrin/mssql-server-oldies:2014-latest --build-arg SQLCOLLATION=SQL_Latin1_General_CP1_CI_AS .
docker build -m 4g -t cagrin/mssql-server-oldies:2014-latest-pl --build-arg SQLCOLLATION=Polish_CI_AS .
cd..
cd 2016-latest
docker build -m 4g -t cagrin/mssql-server-oldies:2016-latest --build-arg SQLCOLLATION=SQL_Latin1_General_CP1_CI_AS .
docker build -m 4g -t cagrin/mssql-server-oldies:2016-latest-pl --build-arg SQLCOLLATION=Polish_CI_AS .
cd..
cd 2017-latest
docker build -m 4g -t cagrin/mssql-server-oldies:2017-latest --build-arg SQLCOLLATION=SQL_Latin1_General_CP1_CI_AS .
docker build -m 4g -t cagrin/mssql-server-oldies:2017-latest-pl --build-arg SQLCOLLATION=Polish_CI_AS .
cd..
cd 2019-latest
docker build -m 4g -t cagrin/mssql-server-oldies:2019-latest --build-arg SQLCOLLATION=SQL_Latin1_General_CP1_CI_AS .
docker build -m 4g -t cagrin/mssql-server-oldies:2019-latest-pl --build-arg SQLCOLLATION=Polish_CI_AS .
cd..