



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
	
	doc <- system.file("data","questionFour.html", package = "XML" )
	readed_html <- htmlParse(doc)
	readed_html
	
	
}

a <- function(){
	library(XML)
	library(httr)
	
	file <- system
}
