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
  * dcats(carMelt, cyl ~ variable)
