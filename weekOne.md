## Obtaining Data Motivation

Raw Data > Processing Script > Tidy Data > Data Analysis > Data Comunication

## Definition of Data
Data are vaues of quialitative or quantitative variables, beloging to a _set of items_

__Qualitative__: Country of origin, sex, treament

__Quantitative__: Height, weight, blood pressure

## Raw Data
  * The original source of Data
  * Often hard to use for data analysis
  * Data analysis includes processing
  * Raw data may only need to be processed once
  
## Processed Data
  * Data that is ready for analysis
  * Processing can include merging, subesetting, trasforming, etc..
  * There may be standards for processing
  * __*All steps should be recorded*__
  
  

## The Tidy Data

### The four things you should have after processing data
 * The Raw Data
 * A tidy data set
 * A code book describing each variable and its values in the tidy data set. (Called Meta Data)
 * An explicit and exact recipe you used to go from 1 -> 2,3.

### You know the raw data is in the right format if you
 1. Ran no software on the data
 2. Did not manipulate any of the numbers in the data
 3. You did not remove any data from the data set
 4. You did not summarize the data any way
 
(Unadultarated raw data)


### Working with Data
 1. Each variable you measure should be in one column
 2. Each different observation of that variable should be in a different row
 3. There should be one table for each "kind" of variable
 4. If you have multiple tables, they should include a column in the table that allows them to be linked
 
*Some other important tips*

 * Include a row at the top of each file with variable names
 * Make variable names human readable (AgeAtDiagnosis instead of AgeDx
 * In general data should be savedon one file per table
 
## The Code Book

 1. Information about the variables (including units!) in the data set not contained in the tidy data
 2. Information about the summary choices you made
 3. Information about the experimental study design you used
 

*Some important tips*

 * A common format for this document is a Word/text file. (Or a markdown file)
 * There shoud be a section called "Study Design" that has a thorough desctiption of how you collected the data.
 * There must be a section called "Code Book" that describes each varable and its units.


### The instuction list
 * Ideally a computer Script (R, Python, etc)
 * The input for the script is the raw data
 * The output is the processed data, Tidy Data
 * There are no parameters on the scrips. (This is really important, the scripts should be plug and play)
 
If there is no change to script every step, you need to provide instructions like:
 1. Step 1: take raw file, run version 3.1.2 of summarize software with parameters a = 1, b = 2, c = 3
 2. Step 2: run software separately for each sample
 3. Step 3: take colum three of outputfile.out for each sample and that is the corressponding row in the output data set


## Getting the data

### Get/set your working directory

 * A basic component of working with data is knowing your working directory
 * The two main commands are getwd() and setwd()
 * Be aware of relative vs absolute paths
  *__Relative__ - setwd("./data",) setwd("../")
  *__Absolute__ - setwd("/User/jtleed/data/")
 * Important differenc ein Windows setwd("C:\\Users\\Andrew\\Downloads")


### Cheking for and creating directories

 * __file.exists("directoryName")__ will check to see if the directory exists
 * __dir.create("directoryName")__ will create a directory if it dosen't exists
 * Here is an example:

`if(!file.exists("data")){
 dir.create("data")
}`

### Getting data form the internet
 * Downloads a file from the internet
 * Even if you could do this by hand, it help reproductibility
 * Importatn parameters are url, destfile (Where it goes), method
 * Useful for downloading tab-delimited, csv, and other files

`fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./data/camera/csv", method = "curl")`
(curl method works in Mac for https)

`list.files("/data")`

`##[1] "cameras.csv"`

`dateDownloaded <- date()`

`dateDownloaded`

`##[1] "Sun Jan 12 21:37:44 2014"`

###Some notes about download.file()
 * If the url stats with http you can use download.file()
 * If the url stats with http on Windows you may be ok
 * If the url starts with https on Mac you may need to set method="curl"
 * If the file is big, it can take a while
 * Be sure to record when you downloaded

### Loading flat files - read.table()

 * This is the main function for reading data in R
 * flexible and robust but requires more parameters
 * Reads the data into RAM - big data can cause problems
 * Important parameters file, header, sep, row.names, nrows
 * Related: read.csv(), read.csv2()
 
 `cameraData <- read.table("./data/camera.csv", sep="", header = TRUE)`
 `head(cameraData)`
 
 *read.csv -- automatically ads sep and header
 
 #### other important parameters for read.table()
  * quote- you can tell R wether there are any quoted values quote ="" means no quotes
  * na.string - set the character that represents a missing value/
  * nrows- how many rows to readof the file ( nrows =10)
  * skip - number of lines to skip before starting to read
  
  (The biggest trouble with reading flat files are quotation marks,  placed in data balues, setting quote="" often resolves these).
 
 ###Download Excel Data
  `if(!file.exists("data")){dir.create("data")} `
  `fileUrl <-"https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD&bom=true" `
  `download.file(fileUrl,desfile="./data/camera.xlsx",method="curl")`
  `dateDownloaded <- date()`
 
 Use read excel packaged like {xlsx package} read.xlsx(), read.xlsx2()
  `library(xlsx)`
  `cameraData <- read.xlsx("./data/camera/xlsx",sheedIndex = 1, header = TRUE"`
  `head(cameraData)`
  
 SheetIndex (Which sheet is the data on)
 conIndex, rowIndex (choose which row or column you will read)
 
 ### Writing Excel Files
  * The write.xlsx function will write out an Excel file with simitar arguments
  * read2.xlsx is much faster than read.xlsx, but for reading subsets of rows might be unstable
  * The __XLConnect__ package has more options for writing and manipulating Excel Files
  * The __XLConnect vignette__ is a good place to start for that package
  * In general it is advided to store your data in either a database or a in comma separated files (.csv) or tab separated files (.tab/.txt) as they are easier to distribute.
 
 
 ## Reading XML
  * Extensible Markup Language
  * Frquently used to store structured data
  * Particulary widely used in internet aplications
  * Extracting XML is the basis for most web scraping
  * Components : (Mark up - Labels that give the text structure; Content - the actual text of the document)
  
  XML > Check in wikipedia
  
  ### How to read XML
  
  `library(xml)`
  `fileUrl <- "URL"`
  `doc <- xmlTreeParse(fileUrl, useInternal=TRUE)`
  `rootNode <- xmlRool(doc)`
  `xmlName(rootNode)`
  
  Too access tags: rootNodes[[1]], rootNodes[[1][[1]]
  
  #### Programatically extact parts of the file
  `xmlSapply(rootNode,xmlValue)`
  `xpathSapply(rootNode,"//name",xmlValue)`
  `xpathSApply(rootNode,"//price",xmlValue)`
   (Learn XPATH)
   
### Extract content by attributes (HTML)
 * Use htmlTreeParse

`fileUrl <- "ULR"'
`doc <- htmlTreeParse(fileUrl, useInternal = TRUE)`
`scores <- xpathSApply(doc,"//li[@class='score']", xmlValue)`
`teams <- xpathSApply(doc,"//li[@class=`team-name']",xmlValue)`

 
