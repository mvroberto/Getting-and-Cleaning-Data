### mySQL

  * free and widely used open source database software
  * Widely used in internet based applications
  * Data are structured in: Data bases, tables within tables, fields within tables
  * Each row is called a record


### Intall mySQL on your computer

### Intall my mySQL on R
 * intall.packages("RMySQL")
 
### Getting data with mySQL

`ucscDb <- dbConnect(MySQL(),user ="genome", host="henome-mysql.case.ucsc.edu")`
`result <- dbGetQuery(ucscDb, "show databases;"); dbDisconnect(ucscDb);`
 * assign each connection a handle
 * "show databases" is a SQL query
 * When you disconenct you que TRUE
 
 `hg19 <- dbConnect(MySQL(),user ="genome",db="hg19", host="henome-mysql.case.ucsc.edu")`
 `allTables <- dbListTables(hg19)`
 
  * db helps you access an specific data base
  
  `dbListFields(hg19,"tableName")` 
  
  * dbListFields -- gives you the names of columns in the table
  
  `dbGetQuery(hg19, "select count(*) from tableName")
  
  * dbGetQuery ---  gives you the amount of rows
  
  `affyData <- dbReadTable(hg19,"table name")`
  
  *dbReadTable -- gives you the table
  
