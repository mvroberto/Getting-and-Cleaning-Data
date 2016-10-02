### mySQL

  * free and widely used open source database software
  * Widely used in internet based applications
  * Data are structured in: Data bases, tables within tables, fields within tables
  * Each row is called a record


#### Intall mySQL on your computer

#### Intall my mySQL on R
 * intall.packages("RMySQL")
 
#### Getting data with mySQL

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
  
  * dbReadTable -- gives you the table
  
  `query  <- dbSendQuery(hg19, "select * from my_table where")`
  `affyis <- fetch(query)`
  * you can use `fetch(query,n=10)` --- get small part of the table
  * dbSendQuery --- sends the query
  
  `dbClearResult(query)`
  
  
  ##### In mySQL do not forget to close the connection 
   
### HDF5
 * used for storing large data sets
 * Supports storing a range of data types
 * Hierarchical data format
 * groups containing zero or more data ets and metadata
    * Have a group header with group name and list attributes
    * Have a group symbol table with a list of objects in group
 * datasets mutidimencional array of data elements with metadata
    * Have a header with name, datatype, and storage layout
    * Have a data array with the data
(www.hdfgroup.org)


#### Installing HDF5 package

`source("http://bioconductor.org/biocLite.R")`
`biocLite("rhdf5")`

`library(rhdf5)`
`created = h5createFile("example.h5")`
`created`

### Reading data from the WEB

#### Webscraping
 *__Webscrapping__ : Programatically extrating data from the HTMl code of Websites
 
   * I can be a great wat to get data
   * Many websites have information you may want to programaticaly read
   *In some cases this is againts terms of services for the website
   * Attempting to read too many pages too quickly can get you IP address blocked
   
   `con = url("MYURL")`
   `htmlCode = readLines(con)
   `close(con)`
   `htmlcode`
   
   #### httr library
   `library(httr); html2 = GET(url)`
   `content2 = content(html2,as="text")`
   `parsedHTML = htmlParse(content2,asText=TRUE)`
   `xpathSApply(parsedHtml."//title",xmlValue)`
   
   #### Accessing websites with password
    `pg2 <- GET("url", authenthicate("user","password"))`
    
    ### Getting data form apis
    
 (Application Programming interfaces)
 
 ### Accessing Twiter from R
  `myapp <- oauth_app("twitter", key="yourConsumerkey". secret="yourConsumerSecret")`
  `sig <- sing_oauth1.0(myapp, toke ="tokenHere", token_secret = "Token secret")`
  `homeTL <- GET("https://api.twitter.com/1.1/statuses/home_timeline.json",sig)`
  
  #### Converting Json to opbjects
   `json1 <- content(homeTL)`
   `json2 <- jsonlite::fromJSON(toJSON(json1))`
   `json[1,1:4]`

 #### Reading Appis in general
 
 * httr allows GET, POST, PUT, DELETE rquest if you are authorized
 * You can authenticate with a user name or a password
 * Most modern APIs use something like oauth
 * httr works well with Facebook , Google, Twitter, Github, etc
