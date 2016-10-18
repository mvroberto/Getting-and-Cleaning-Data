##Week Three

###Subsetting and Sorting Data
  * __Which__ command do not retunrn NAs
  * __Sort__ na.last = TRUE
  * __Order__ 
  * plyr package ---- arrange
  
#### Adding rows and columns
  * x$var4 <- rnom(5)
  * cbind ---- cbind(x,rnorm(5))   (rbind)
  
### Summarizing Data
  * __head__
  * __tail__
  * __summary__
  * __str__
  * __quintile__ (quantile_probs)
  * __table__ (unseNa -- "ifnay")--- Create two dimensional tables
  * sum(is.na(variable))
  * __any__  any(is.na(varaible)
  * __all__ checks if any single value satisfice the contifition
  * __colSums__
  * table(variable %in% c("21212", "21213"))
  * restData[restData%zipCode %in% c("21212", "21213")] --- will give you a subsetted data frame with the passed zipCodes
  *__xtabs__
  * __ftables__
  *__object.size__  print(object.size(data),units="MB")
  
  ### Creating Variables
   * Often the raw data won[t have a value you are looking for
   * You will need to transform the data to get the values you would like\
   * Usually you will add those values to the data Frames you are working on
   * Common Variables to create (missingness indicators, "Cutting Up" quantitative variables", Applying Transfroms)
   
 #### Creating Sequences
  * seq(1,10, by=2), length = 3 , seq(along=x)
  * ifElse(data_frame < 0, TRUE,FALSE)
  * categorltial Variables --- __cut__
 Easier cutting (library(Hmisc))
  * creat factor variables __factor__
  
 ##### Levels of factor variables
 * __mutate__
 
 #### Reshaping Data
  1.- Each variable forms a Column
  2.- Each observation forms a row
  3.- Each table/file stores dat about one kind of observation (people/hospitals)
  
  library(reshape2)
  * __melt()
  * dcast(carMelt, cyl ~ variable)
  * Split
  *ddply
  
#### dplyr
Created to work with data frames

The dara drame is a key data structure in statistics and in R.
 * There is one observation per row
 * Each column represents a variable or measure or characteristic
 * Primary implementarion that you will use in the default R implementation
 * Other imlplementations, particularly relational databases systems

##### dplyr Verbs
 * select: return a subset of the columns of a data frame
 * filter: extract a subset of rows from a data frame based on logical condition
 * arrange: reorder rows of a data frame
 * rename: rename variables in a data frame
 * mutate: add new variables / columns or transform existing variavles
 * summarise /  summarize: generate summary statistics of different variables in the data frame, possibly within strata
 
 ##### dplyr Properties
 
  * The first argument is a data frame
  * The subsequent arguments describe waht to do with it, and you can refer to columns in the data frame directly without using the $ operator
  * The result is a new data frame
  * Data Frames must be propertly formatted and annotated for this to all be usefull
  
 Pipeline operator %>%
 
 * dplyr can work with other data frame "backends"
 * data.table for large fast tables
 * SQL interface for relational databases via DBI package
 
 #### Merging data
 
