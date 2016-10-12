

answer_one <- function(){
library(httr)
library(httpuv)

myapp <- oauth_app("github",
	key ="72a8133f830592346673",
	secret ="d75503705938b8c4dad8ef32184651a08c00fe08"
	)
	
	github_token <- oauth2.0_token(oauth_endpoints("github"),myapp, cache = FALSE)
	
	gtoken <- config(token = github_token)
	#req <- with_config(gtoken, GET("https://api.github.com/users/jtleek/repos"))
	
	req <- GET("https://api.github.com/users/jtleek/repos",gtoken)
	stop_for_status(req)
	content(req)
	
	###info[10] === el numero 10 de la lista
}

answer_two <- function(){
	library(sqldf)
	date_downloaded <- date()
	date_downloaded
	
	directory_files <- dir()
	
	if(!is.element("questionTwo.csv",directory_files)){
		fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
		download.file(fileUrl, destfile ="/Users/robertovallemateos/Desktop/gitHub_excersices/gettingData/questionTwo.csv")
	}
	my_file <- read.csv("questionTwo.csv")
	
	unique(my_file$AGEP) 
}


answer_four <- function(){
	library(XML)
	library(httr)
	library(sqldf)
	
	date_downloaded <- date()
	directory_files <- dir()
	if(!is.element("questionFour.html",directory_files)){
		fileUrl <- "http://biostat.jhsph.edu/~jleek/contact.html"
		download.file(fileUrl, destfile ="/Users/robertovallemateos/Desktop/gitHub_excersices/gettingData/questionFour.html")
	}
	
	readed_html <- htmlParse("/Users/robertovallemateos/Desktop/gitHub_excersices/gettingData/questionFour.html", useInternal = TRUE)
	my_file <- capture.output(readed_html)
	my_file
	
	file_lenght <- c(nchar(my_file[8]),nchar(my_file[20]),nchar(my_file[30]),nchar(my_file[100]))
	my_file
	
	################## Works Better :)	
	make_connection <- url("http://biostat.jhsph.edu/~jleek/contact.html")
        htmlCode <- readLines(make_connection)
	close(make_connection)
	real_list <- c(nchar(htmlCode[10]),nchar(htmlCode[20]),nchar(htmlCode[30]),nchar(htmlCode[100]))
	
	my_list <- list(my_file,htmlCode)
	
	file_lenght
	my_list
	real_list
	
}

a <- function(){
	library(XML)
	library(httr)
	
	make_connection <- url("http://biostat.jhsph.edu/~jleek/contact.html")
	htmlCode <- readLines(make_connection)
	close(make_connection)
	return(c(nchar(htmlCode[10]), nchar(htmlCode[20]), nchar(htmlCode[30]), nchar(htmlCode[100])))
}

answer_five <- function(){
	library(httr)
	library(sqldf)
	
	date_downloaded <- date()
	directory_files <- dir()
	if(!is.element("questionFive.for",directory_files)){
		fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"
		download.file(fileUrl, destfile ="/Users/robertovallemateos/Desktop/gitHub_excersices/gettingData/questionFive.for")
	}
	
	my_file <- read.fwf("questionFive.for", skip = 4, widths = c(12,7,4,9,4,9,4))
	sum(my_file[,4])
}
