# p-arp_historisierte_av_daten


## 2020
```
ogr2ogr -f "GPKG" bdbed_2020-03.gpkg PG:"host=geodb.verw.rootso.org dbname=sogis user=hdus password=hdus" -sql "SELECT * FROM avdpool.bdbed WHERE new_date < '2020-03-01' AND archive_date > '2020-03-01'" 
```

```
ogr2ogr -f "GPKG" eopoly_2020-03.gpkg PG:"host=geodb.verw.rootso.org dbname=sogis user=hdus password=hdus" -sql "SELECT * FROM avdpool.eopoly WHERE new_date < '2020-03-01' AND archive_date > '2020-03-01'" 
```

## 2018
```
ogr2ogr -f "GPKG" bdbed_2018-03.gpkg PG:"host=geodb.verw.rootso.org dbname=sogis user=hdus password=hdus" -sql "SELECT * FROM avdpool.bdbed WHERE new_date < '2018-03-01' AND archive_date > '2018-03-01'" 
```

```
ogr2ogr -f "GPKG" eopoly_2018-03.gpkg PG:"host=geodb.verw.rootso.org dbname=sogis user=hdus password=hdus" -sql "SELECT * FROM avdpool.eopoly WHERE new_date < '2018-03-01' AND archive_date > '2018-03-01'" 
```

## 2016
```
ogr2ogr -f "GPKG" bdbed_2016-03.gpkg PG:"host=geodb.verw.rootso.org dbname=sogis user=hdus password=hdus" -sql "SELECT * FROM avdpool.bdbed WHERE new_date < '2016-03-01' AND archive_date > '2016-03-01'" 
```

```
ogr2ogr -f "GPKG" eopoly_2016-03.gpkg PG:"host=geodb.verw.rootso.org dbname=sogis user=hdus password=hdus" -sql "SELECT * FROM avdpool.eopoly WHERE new_date < '2016-03-01' AND archive_date > '2016-03-01'" 
```

## 2014
```
ogr2ogr -f "GPKG" bdbed_2014-03.gpkg PG:"host=geodb.verw.rootso.org dbname=sogis user=hdus password=hdus" -sql "SELECT * FROM avdpool.bdbed WHERE new_date < '2014-03-01' AND archive_date > '2014-03-01'" 
```

```
ogr2ogr -f "GPKG" eopoly_2014-03.gpkg PG:"host=geodb.verw.rootso.org dbname=sogis user=hdus password=hdus" -sql "SELECT * FROM avdpool.eopoly WHERE new_date < '2014-03-01' AND archive_date > '2014-03-01'" 
```

## 2012
```
ogr2ogr -f "GPKG" bdbed_2012-03.gpkg PG:"host=geodb.verw.rootso.org dbname=sogis user=hdus password=hdus" -sql "SELECT * FROM avdpool.bdbed WHERE new_date < '2012-03-01' AND archive_date > '2012-03-01'" 
```

```
ogr2ogr -f "GPKG" eopoly_2012-03.gpkg PG:"host=geodb.verw.rootso.org dbname=sogis user=hdus password=hdus" -sql "SELECT * FROM avdpool.eopoly WHERE new_date < '2012-03-01' AND archive_date > '2012-03-01'" 
```

## 2010
```
ogr2ogr -f "GPKG" bdbed_2010-03.gpkg PG:"host=geodb.verw.rootso.org dbname=sogis user=hdus password=hdus" -sql "SELECT * FROM avdpool.bdbed WHERE new_date < '2010-03-01' AND archive_date > '2010-03-01'" 
```

```
ogr2ogr -f "GPKG" eopoly_2010-03.gpkg PG:"host=geodb.verw.rootso.org dbname=sogis user=hdus password=hdus" -sql "SELECT * FROM avdpool.eopoly WHERE new_date < '2010-03-01' AND archive_date > '2010-03-01'" 
```

## 2008
```
ogr2ogr -f "GPKG" bdbed_2008-03.gpkg PG:"host=geodb.verw.rootso.org dbname=sogis user=hdus password=hdus" -sql "SELECT * FROM avdpool.bdbed WHERE new_date < '2008-03-01' AND archive_date > '2008-03-01'" 
```

```
ogr2ogr -f "GPKG" eopoly_2008-03.gpkg PG:"host=geodb.verw.rootso.org dbname=sogis user=hdus password=hdus" -sql "SELECT * FROM avdpool.eopoly WHERE new_date < '2008-03-01' AND archive_date > '2008-03-01'" 
```

## 2008
```
ogr2ogr -f "GPKG" bdbed_2006-06.gpkg PG:"host=geodb.verw.rootso.org dbname=sogis user=hdus password=hdus" -sql "SELECT * FROM avdpool.bdbed WHERE new_date < '2006-06-01' AND archive_date > '2006-06-01'" 
```

```
ogr2ogr -f "GPKG" eopoly_2006-06.gpkg PG:"host=geodb.verw.rootso.org dbname=sogis user=hdus password=hdus" -sql "SELECT * FROM avdpool.eopoly WHERE new_date < '2006-06-01' AND archive_date > '2006-06-01'" 
```


## Neuere Daten

```
java -jar /Users/stefan/apps/ili2pg-5.1.0/ili2pg-5.1.0.jar --dbhost localhost --dbport 54321 --dbdatabase edit --dbusr postgres --dbpwd secret --dbschema av_dm01 --strokeArcs --nameByTopic --disableValidation --defaultSrsCode 2056 --models DM01AVSO24LV95 --schemaimport
```

```
ogr2ogr -f "GPKG" bdbed_2023-10.gpkg PG:"host=localhost port=54321 dbname=edit user=postgres password=secret" -sql "SELECT * FROM av_dm01.bodenbedeckung_boflaeche" 
```

```
ogr2ogr -f "GPKG" eopoly_2023-10.gpkg PG:"host=localhost port=54321 dbname=edit user=postgres password=secret" -sql "SELECT eopoly.*, eo.art FROM av_dm01.einzelobjekte_flaechenelement as eopoly LEFT JOIN av_dm01.einzelobjekte_einzelobjekt AS eo ON eopoly.flaechenelement_von = eo.t_id" 
```