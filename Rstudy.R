getwd()
setwd("C:/Users/seo/Desktop")
dir()

ex_data <- read.table("C:/Users/seo/Desktop/Rstudy/data_ex.txt",encoding = "EUC-KR", fileEncoding = "UTF-8",header=T)
ex_data

install.packages('readxl')
library(readxl)

excel_dat_ex <- read_excel("C:/Users/seo/Desktop/Rstudy/data_ex.xlsx")
View(excel_dat_ex)


install.packages('XML')
library(XML)

xml_data <- xmlToDataFrame("C:/Users/seo/Desktop/Rstudy/data_ex.xml")
View(excel_dat_ex)

install.packages('jsonlite')
library(jsonlite)

json_data <- fromJSON("C:/Users/seo/Desktop/Rstudy/data_ex.json")
View(json_data)

data("iris")
iris
str(iris)

pairs(iris)
