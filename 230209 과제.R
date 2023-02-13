# 11.titanic_data. csv 로 부터 자료를 읽어서 raw_data 로 저장하시오
getwd()
setwd()
dir()

raw_data <- read.csv(file="C:/Users/seo/Desktop/ex_R/tested.csv",stringsAsFactors=F, header = T)
raw_data

# 12. head함수를 사용하여 입력된 raw_data 를 확인하시오 .

head(raw_data,10)

# 13.raw_data 의 자료의 차원을 구하시오.

dim(raw_data) #418행 , 12열

# 14.raw_ data 에서 성별 (Sex) 을 추출하고 gender.txt 로 저장하시오

gender <-  raw_data['Sex']
gender

write.csv(raw_data$Sex,'C:/Users/seo/Desktop/gender.txt',fileEncoding = 'cp949')


# 15.raw_data 의 2~10 열의 변수 를 선택하여 새로운 객체에 저장하고 sub_data.txt 로 저장하시오 .(구분은 을 이용할 것 )

sub_data <- raw_data[,2:10]
# 이런 형식으로도 사용가능
# raw_data[,2:10]
# raw_data[,seq(2,10,1)]

write.table(sub_data,file="sub_data.txt",row.names=T, col.names=T,quote=T, sep = "-")

#write.csv는 구분자를 기본적으로 ,를 사용한다.

# 16.raw_data 의 31~100 의 행과 2~10 사이의 짝수 열을 선택하여 새로운 객체에 저장하고 sub_data2.csv 로 저장하시오
# (구분을 comma 사용

write.table(raw_data[31:100,seq(2,10,2)],file="sub_data2.txt",row.names=T, col.names=T,quote=T, sep = ",")

# 17.raw_data 에서 결측값의 갯수를 구하시오.

sum(is.na(raw_data)) #87개 #177

nrow(raw_data)
dim(raw_data)
View(raw_data)

nrow(which(is.na(raw_data),T))

# 18.raw_data 에서 결측값의 위치를 1 차원 인덱스로 찾으시오 .
which(is.na(raw_data)) # 1

# 19.raw_data 에서 결측값의 위치를 2 차원 인덱스로 찾으시오 .
which(is.na(raw_data),arr.ind = T) # 2

# 20.raw_data 의 Age 변수의 결측값의 위치를 index 변수에 저장하고 이를 이용하여 모든 결측 값을 20 으로 변경하시오.


colnames(raw_data)
raw_data[,6]
raw_data$Age
raw_data[,which(colnames(raw_data)=="Age")]

#이런식으로 사용할 수 있다.

index <-  raw_data$Age
index <-  ifelse(is.na(index),20,index)
index

mean_index <-  mean(raw_data$Age, na.rm = T)
index <- ifelse(is.na(index),mean_index,index) #평균값으로 대체하는 것
index

index = raw_data['Age']
is.na(index)
index[is.na(index)] <- 20
index

# 21. If조건문을 활용하여 , raw_data 의 Age 변수를 활용하여 10 이상 20 미만 , 
# 20 이상 30 미만 … 60 이상 70 미만 , 그 외로출력하는r 프로그램을 작성하시오

for (i in seq(dim(index)[1])){
  if (index[i,6] < 70 & index[i,6] >= 60){print('60 이상 70 미만')}
  else if (index[i,] < 60 & index[i,] >= 50){print('50 이상 60 미만')}
  else if (index[i,] < 50 & index[i,] >= 40){print('40 이상 50 미만')}
  else if (index[i,] < 40 & index[i,] >= 30){print('30 이상 40 미만')}
  else if (index[i,] < 30 & index[i,] >= 20){print('20 이상 30 미만')}
  else {print('그외')}

}




# 22. If조건문을 활용하여 raw_data 의 Cabin 변수에서 결측값이 들어간 위치에 ‘ 라는 값으로 변경하시오


ifelse(is.na(raw_data$Cabin),raw_data$Cabin,"DELETE")

raw_data$Cabin<- ifelse(raw_data$Cabin=="",'DELETE',raw_data$Cabin)
raw_data$Cabin


for (i in seq(dim(raw_data['Cabin'])[1])) {
  
    if (raw_data['Cabin'][i,] == ""){
      raw_data['Cabin'][i,] = "DELETE"
    }
}

raw_data['Cabin']


# for 문
x <- vector()
for (i in 1:5){
  x[i] <- i
}

x

x <- 3
for (i in 1:9){  cat(x,"*",i,"=",x*i,"\n")
}


for (i in 1:5){
  for (j in seq(i))
    cat("*")
  cat("\n")
}

for (i in 1:5){
  for (j in 5:i)
    cat("*")
  cat("\n")
}

x = 5
for (i in 1:x){
  for (j in seq(x-i))
    cat("-")
  for (j in i)
    cat("*")
  cat("\n")
}

for (i in 1:5){
  cat('\n',rep("*",i))
}

#mean() 함수를 쓰지 않고, for문을 사용하여 x의 평균 
x <- c(1,2,3,4,5)
sum <- 0

for (i in seq(length(x)))
  sum <- sum+x[i]/length(x)

sum
  
# sum(x)

x <- c(1,2,3,4,5)
sum <- 0
cnt <- 0

# i in 1:length(x)

for (i in seq(length(x)))
  if(x[i]%%2 == 1){
    sum <- sum+x[i]
    cnt <- cnt + 1
  }

sum/cnt


xmatri <- matrix(1:20,4,5)
xmatri

xmat <- matrix(nrow=4,ncol = 5)
xmat

for (i in 1:nrow(xmat)){
  for (j in 1:ncol(xmat)){
    xmat[i,j] <- i+((j-1)*4)
  }
}

xmat

i = 1
while (i<=5){
  cat(rep("*",i),"\n")
  i <- i+1
}

s = 0
for (i in 1:10){
  s= s+1
  if (i>= 5) {
    cat(s)
    break
  }
}

i <-  0

while (TRUE) {
  i = i + 1 
  cat("\n",i)
  if (i == 8){
    cat("\n","발숑")
    break
  }
}

#next continue 같은거

x <- c(1,5,2,3,8)
sum <- 0
cnt <- 0
for (i in 1:length(x)){
  if (x[i]%%2 == 0){
    sum <- sum + x[i]
    cnt <- cnt + 1
    cat(x[i])
    
  }

}

sum 
sum/cnt
cnt

# 사용자 정의 함수
googoo81 <- function(x){
  cat("\n")
  for (i in 1:9){
    cat(x,"*",i,"=",x*i,"\n")
  }
  cat("\n")
}

googoo81(5)

a <- c(1,3,5,6)
std.ftn <- function(x){
  return(list(mean=mean(x),var=var(x)))
}


ls <-  std.ftn(a)
ls$mean

ls
ls[[1]]
ls[[2]]
ls$mean

a = list(n=1, n2=2)

a$n

a <-c(1,3,5)

noact  <- function(x){
  loc <- 3
  return(loc) #지역변수
}

noact(a)
loc

#지역변수

a <- c(1,3,5)
noact <- function(x){
  a[1] <- 3
  return(a)
}

noact(a)
a

#표준편차!?

