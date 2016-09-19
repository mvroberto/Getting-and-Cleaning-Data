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
