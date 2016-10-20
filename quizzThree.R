answer_one <- function(){
	fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
	downloaded_file <- download.file(fileUrl, destfile = "/Users/robertovallemateos/Desktop/GaT_Coursera/americanCommunity.csv", method = "curl")
	readed_file <- read.csv("americanCommunity.csv")
	readed_file
	
	 file <- my_file[which(readed_file$AGS == 6 & readed_file$ACR == 3),]
	 
	 head(file,3)
###AGS  ===== 6
###ACR	===== 3
#### SERIALNO (UNIQUE)GS
}

answer_two <- function(){
	library("jpeg")
	fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
	downloaded_file <- download.file(fileUrl, destfile = "/Users/robertovallemateos/Desktop/GaT_Coursera/image.jpg", method = "curl")
	
	img <- readJPEG("image.jpg", native = TRUE)
	
	quantile(img,probs=c(0.3,0.8))
	
}


pre_answer_four1 <- function(){
	
	fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
	downloaded_file <-  download.file(fileUrl, destfile = "/Users/robertovallemateos/Desktop/GaT_Coursera/gdp.csv")
	downloaded_file
	
	
	
}

pre_answer_four2 <- function(){
	
	fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
	downloaded_file <-  download.file(fileUrl, destfile = "/Users/robertovallemateos/Desktop/GaT_Coursera/education.csv")
	downloaded_file
	
	
	
}


answer_three <- function(){
	library(dplyr)
	education_file <- read.csv("education.csv")
	gdp_file <- read.csv("gdp.csv")
	
	##str(education_file)  ###CountryCode
	##str(gdp_file) ###X
	
	merged_file <- merge(education_file, gdp_file, by.x = "CountryCode", by.y = "X")
	##str(merged_file)
	selected <- select(merged_file, Long.Name, CountryCode,Gross.domestic.product.2012)
	merged_file$Gross.domestic.product.2012 
	
	}
