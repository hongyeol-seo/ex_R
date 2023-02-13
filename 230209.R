# ex_v = c(1,2,3,4,5,6,7,8,9)
# ex_v[6]
# 
lst1 <- list(c(1,2,3),"Hello")
str(lst1)

x = c(1,2,3)
y = c(4,5)

length(y) = max(length(x),length(y))
xy <- data.frame(x,y)
xy

x_mat <- matrix(rnorm(100),20,5)
x_mat
apply(x_mat,2,mean)
apply(x_mat,2,sum)
apply(x_mat,2,var)


set.seed(123) #
rnorm(100)

myname= "김첨지"
paste("My name is", myname,sep=" ")

#fill name
fill_id = 1533
paste("Dataset_",fill_id, ".txt",sep="")

#nchar#문자열 갯수를 세는 함수
test <- c("abcdefg","AFFY1245820")
nchar(test)

getwd()

setwd("C:/Users/seo/Desktop")

getwd()


dat = data.frame()

dat = edit(dat)
dat

dir()

x = scan(file="input_noh.txt",what=numeric())
x = scan(file="input_noh.txt",what=character())
x = scan(file="input_noh.txt")
x

dat = read.table(file="input_noh.txt")
dat2 = read.table(file="input_noh.txt",header=T)
dat
dat2 

#문자열 요인 자동변경 방지 : stringAsFactors = F 옵션
dat = read.csv(file="test3.txt",stringsAsFactors = F)
dat

write.csv(dat2,"잠좀자자.csv")

dat <-  read.csv(file="개인정보.csv", header = T, fileEncoding = "euc-kr")
dat

data_info  <- dat[,c(2,3)]

stat_info <- c("평균","중앙값",'분산')
stat_info

mean_info <- apply(data_info,2,mean)
mean_info <- as.vector(c('평균', bnmmean_info))
mean_info

dat[7,] <-mean_info

write.csv(dat,"작업완료.csv")

#자료의 출력

#cat 
x <- 1:10
cat(x,file="x.txt",sep="\n") #output to a file
cat(x,sep="\t")
cat("\n",1,"st element of x =",x[1]) #output to a file

x1 <- 1:20
x2 <- rep(c("A","B","B","A"),5)
x3 <- rep(c(T,F),each=10)
dat <- cbind(x1,x2,x3)
dat
dat <- data.frame(x1,x2,x3)
dat
write.table(dat,file="text1.txt",row.names = T, col.names = T,quote = T,sep="\t")
write.table(dat,file="text2.txt",row.names = F, col.names = F,quote = F,sep="\n")
write.table(dat,file="text3.txt",sep=",")

head(dat,10)
tail(dat,10)

View(iris)
str(iris)
iris[,1:4]

x <- matrix(c(NA,1,3,NA,NA,2),3,2)
is.na(x)
sum(is.na(x))

which(is.na(x))
which(is.na(x),arr.ind = T)
which(is.na(x),T)


lapply(iris[,1:4],sum)

apply(iris[,1:4 ],2,sum)
apply(iris[,1:4 ],sum)

x <- 1:5
if(any(x>0)) {print(x)}

for (i in 1:100){
  print(i)
}

x = c(10,3,6,9)
y = c(1,8,5,3)
ifelse(x>y,x,y)

x <- c(1,3,2,5,2)
i <- 2
switch (i, mean(x),median(x),sd(x),var(x))


x <- c(1,3,2,5,2)

if (sum(x) > 5){
  print('sum(x) is greater than 5')
} else if(sum(x) < 5){
  print('sum(x) is less than 5')                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
} else{
  print('sum(x) is equal to 5')
}

y <- ifelse(x>3,x-3,x)
y

i <- 2
switch (i, x+y, x-y,x*y)

score <- 40
if (score>=90){
  print("A")
}else if (score>=75){
  print("B")
}else if (score>=50){
  print("C")
}else{
  print("D")
}

score <- 40
type = "log"

switch (type,
  sqrt = score^2, log=log(score)
)