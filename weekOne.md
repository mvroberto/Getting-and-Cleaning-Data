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
 4. 
 
*Some important tips*

 * A common format for this document is a Word/text file.
 * There shoud be a section called "Study Design" that has a thorough desctiption of how you collected the data.
 * There must be a section called "Code Book" that describes each varable and its units.
