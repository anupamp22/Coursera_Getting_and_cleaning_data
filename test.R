# #example 5 - reading csv file
# 
# setwd("./RProjects/")
# #fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
# #download.file(fileURL,destfile="/home/anupam/RProjects/testdata.csv", method="curl")
# library(data.table)
# DT <- fread(input="./testdata.csv", sep=",")
# #DT <- read.csv("./testdata.csv", sep=",", header=TRUE)
# #head(DT)
# system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))
# # #system.time(rowMeans(DT)[DT$SEX==1])+system.time(rowMeans(DT)[DT$SEX==2])
# system.time(mean(DT[DT$SEX==1,]$pwgtp15))+system.time(mean(DT[DT$SEX==2,]$pwgtp15))
# system.time(tapply(DT$pwgtp15,DT$SEX,mean))
# system.time(DT[,mean(pwgtp15),by=DT$SEX])
# system.time(mean(DT$pwgtp15,by=DT$SEX))

#example 4 - reading xml file

# fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
# download.file(fileURL,destfile="/home/anupam/RProjects/example4.xml", method="curl")
# library("XML")
# xmlfile <- xmlParse("/home/anupam/RProjects/example4.xml")
# #xmlfile <- xmlTreeParse(file="/home/anupam/RProjects/example4.xml",useInternal=TRUE)
# class(xmlfile)
# xmltop <- xmlRoot(xmlfile)
# class(xmltop)
# xmlName(xmltop)
# xmlSize(xmltop)
# xmlName(xmltop[[1]])
# xmlSApply(xmltop[[1]], xmlName)
# xmlSApply(xmltop[[1]], xmlAttrs)
# xmlSApply(xmltop[[1]], xmlSize)
# # #xmltop[[1]][[1]]
# zipcode <- xpathSApply(xmltop,"//zipcode",xmlValue)
# length(zipcode[zipcode==21231])
# sum(zipcode==21231)


#example 3 -reading xlsx file

# url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx "
# f<-download.file(url,destfile="/home/anupam/RProjects/exmaple3.xlsx", method="curl")
# d <- date()
# library("xlsx")
# #setwd("./RProjects/")
# colIndex <- 7:15
# rowIndex <- 18:23
# dat <- read.xlsx("exmaple3.xlsx", sheetIndex=1, colIndex=colIndex, rowIndex=rowIndex)
# ansQ3 <- sum(dat$Zip*dat$Ext,na.rm=T)

#example 1 - reading csv file
#setwd("./RProjects/")
#url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
#f <- download.file(url, destfile="example1.csv", method="curl")
# data <- read.table("example1.csv", sep=",",header=TRUE)
# colVALdata <- data$VAL[data$VAL==24]
# sum(!is.na(colVALdata))

#library("RMySQL")

#Quiz 2 - Question 1
# library(httr)
# # 1. Find OAuth settings for github:
# # http://developer.github.com/v3/oauth/
# oauth_endpoints("github")
# # 2. Register an application at https://github.com/settings/applications;
# # Use any URL you would like for the homepage URL (http://github.com is fine)
# # and http://localhost:1410 as the callback url
# #
# # Insert your client ID and secret below - if secret is omitted, it will
# # look it up in the GITHUB_CONSUMER_SECRET environmental variable.
# myapp <- oauth_app("github", "0ee9915b6cb719f62e66", "e6348895010b0f2196aeb4698988c8da11ffff46")
# # 3. Get OAuth credentials
# github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
# # 4. Use API
# gtoken <- config(token = github_token)
# req <- GET("https://api.github.com/rate_limit", gtoken)
# stop_for_status(req)
# content(req)
# BROWSE("https://api.github.com/users/jtleek/repos",authenticate("Access Token","x-oauth-basic","basic"))

#Quiz 2 - Question 2
#setwd("./RProjects/")
#url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
#download.file(url, dest="Fsspid.csv", method="curl")
# acs <- read.csv("Fsspid.csv", sep=",", header=TRUE)
# library("sqldf")
# sqldf("select pwgtp1 from acs where AGEP < 50",drv="SQLite")

#Quiz 2 - Question 4
# u <- "http://biostat.jhsph.edu/~jleek/contact.html"
# con <- url(u)
# htmlcode <- readLines(con)
# close(con)
# sapply(htmlcode[c(10,20,30,100)],nchar)

#Quiz 2 - Question 5
# url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"
# download.file(url,dest="Fwksst.for",method="curl")
# df <- read.fwf("Fwksst.for",widths=c(-1,9,-5,4,4,-5,4,4,-5,4,4,-5,4,4), skip=4)
# sum(df[, 4])




