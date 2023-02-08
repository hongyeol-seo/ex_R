x <- c(1,2,3)
sum(x)
mean(x)

1+1
2+2
3+3

3+5
8-3
3*8
12/4
5**2
5^2
11%%4
18%/%3

3|4
3&4

4 > 3 && 3 == 3
1+1;2+2;3+3

a<-1 
b<-3
a+b
ab <-a+b
ab

Abc<-1
a.b.c<-3
# _abc<=4
if (a==b) print(1) else print(2)

r = 4
circle = r*pi^2
circle

x<-'char'
mode(x)

x<-5
is.character(x);is.numeric(x);mode(x);is.double(x)

real <- 3.5
as.integer(real)

intg <- 3 #기본이 double로 인식함(실수형)
is.integer(intg)

intg2 <-as.integer(3)
is.integer(intg2)
print(intg2)

#벡터 r에서 가장 기본이 되는 객체로 수학에서 정의하는 벡터와 동일하게 생각 특징 :
#값과 위치를 갖는다.

vec<-c(1,2,3,4,5)
vec

# c(arguments) : 콤마(,)로 값을 구분하여 생성 가능
# 하나의 벡터에는 같은 형태의 값을 가져야한다.(자동변환됨)

num <-c(1,2,3)
ch <-c('red',"blue","yellow")
lo <-c(T,F,F,T)
num2 <-c(1,2,'red','pink')
lo2<-c(T,F,T,1,3)
lo3<-c(T,F,'abc')

x <-c(1,2,3)
y <-c(1,2,3,4)
y+x
x+y
x-y
x*y
x/y

A<-T; B<-F; C<-c(T,T);
D<-c(F,T) 
A&B
A&&B
C&D
C&&D

a<-c(1,2); b<-c(2,2); d<-c(3,4)
a<b
a<=b
a<d
a<=d
a>b
a>=b

A<-c(T,T); B<-c(F,T);C<-c(T,T);D<-c(T,F)
A==B
C==D
all(A==B)
all(A==C)
any(A==B)
any(A==C)

log(10)
exp(1);exp(2)
sin(30);sin(pi/2)
x<-c(1,3,2,5,10);max(x);min(x)


x<-c(-5,10,2,5,8,9);range(x)
var(x) #분산
sum(((x-mean(x))^2)/(length(x)-1)) #분산식


x<-c(1,5,3,2,4);sort(x) #sort(x,decreasing=T)
#order(x) #정렬 후의 값에 대한 원래의 위치
x[order(x)]

weight <- c(55,65,50,60,45)
height <- c(1.68,1.70,1.60,1.65,1.62)

BMI <- weight/(height^2)

#표준편차

sd(weight)

x <-1:100
x <-seq(1,100,2)
x

x<-1:10
y<-3.3:8
x;y;

rep(c(1,2),time=3)
rep(c(1,2),each=3)

# 성분으로 0, 21, 12, 16을 갖는 문자열 벡터를 x라는 이름으로 생성하시오.
x = c("0","21","12","16")
# 1번의 x를 숫자형 변수로 변환하고 오름차순으로 정렬하시오.
x = as.integer(x)
x = sort(x)
print(x)
# x를 문자형 변수로 변환하시오.
x =as.character(x)
print(x)
# seq 함수를 이용하여, y라는 변수명으로 0,10,20,30의 수열을 생성하시오.
y = seq(0,31,10)
print(y)
# x<y의 논리값과 x<=y의 논리값을 연산하시오
x<y
x<=y 
# 6 repeat 함수를 이용하여 TRUE, FAlSE의 순서로 반복하는 크기 10의 벡터를 생성하여 변수에 저장하시오.
# 변수명은 임의로 지정

z = c(T,F)
z = rep(z,time=5)
print(z)

vec <- vector()
vec <- 1:10
vec2 <- c('abc','def')
vec3 <- c(T,F,F,T)

# 각 원소에 이름을 할당할 수 있다.
names(vec2) <- c('first','second')

# 비어있는 객체를 생성하고, 인덱스(index)를 활용하여 추가 가능
vec4 = vector()
vec4[1] <- 1 ; vec4[2]<-5
vec4[2] 

# 행렬
x1 <- matrix(1:10,nrow=5,ncol=2,byrow=T)
x2 <- matrix(1:10,5,2,byrow=T) #default = F
cbind(x1,x2) #행을 기준으로 열을 덧붙임
rbind(x1,x2) #열을 기준으로 열을 덧붙임


#행렬

A <-matrix(1:12,4,3)
rownames(A) <-  c('n1','n2','n3','n4')
colnames(A) <-  c("x1",'x2','x3')
A

rname <- c('n1','n2','n3','n4')
cname <- c("x1",'x2','x3')

B <- matrix(1:12,4,3,dimnames = list(rname,cname))
B

# 행렬의 원소 선택

A <- matrix(1:12,4,3)
A
A[1,2]; A[2,3]

# 하나의 열 또는 열의 선택
A[1,]
B[,2]

# 여러 행 또는 열의 선택
A[,1:2] #1,2열의 선택
A[,-3] #3열을 제외하고 선택

#행렬의 더하기
A <- matrix(1:12,4,3); B <- matrix(1,4,3)
B
A+B

A <- matrix(1:6,2,3); B <- matrix(1,3,2)
A%*%B

A <- matrix(1:4,2,2)
A
solve(A)

#전치행렬
A <- matrix(1:4,2,2)
A
t(A)

solve(A)

#행렬식 

A <- matrix(1:4,2,2)
det(A)

#고유값 # 고유벡터


#고유값, 고유벡터

#리스트
lst1 = list(a=1:10,b=matrix(1:4,2,2))
lst1$a
lst1$b <- 0
lst1

lst2 = list()
lst2[[1]] <- matrix(1:10,5,2)
lst2[[2]] <- lst1
lst2[[1]][3]
lst2[[2]][[1]] #리스트의 리스트

lst2[1]
lst2[[1]]

grade <- c("A","A","B","C","B","B")
f.grade <- factor(grade, order=T)
f.grade #명목형 변수로 지정되어있다.

lev = c("C","B","A")
f3.grade <- factor(grade,levels=lev,order=T)
f3.grade

x1 <-  1:4
x2 <- c('kim',"lee",'lung','Park')
dat = data.frame(x1,x2)
dat2 = data.frame(num=x1,name=x2)
dat
dat2[0]
mode(dat)

mode(dat2$num)
mode(dat2$name)

y <- cbind(x1,x2)
y

dat2$num
dat2$name #문자형 변수는 기본적으로 factor로 변환
dat3 = data.frame(x1,x2,stringsAsFactors = F)
dat3

#변수명이 없는 경우 및 일반적인 인덱싱 방법
dat[,1];dat[,2]
dat[1,];dat[2,]

x1 <- array(1:24,dim=c(4,3,2))
x2 <- array(1:32,dim=c(2,2,4,2))

x1[,,1]
x1[,,2] 
x2[,,3,1]

#객체 사이의 변환 
d <- data.frame(a=1:10,b=rep("A",10),c=rep(T,10))
m1 <- as.matrix(d)
m1
m2 <- as.matrix(d[,1])
m2
m3 <- as.matrix(d[,c(1,3)])
m3
m4 <- as.matrix(d[,2:3])
m4

d1 <- as.data.frame(m1,stringsAsFactors = T)
d1
d2 <- as.data.frame(m2,stringsAsFactors = F)
d2
d3 <- as.data.frame(m3,stringsAsFactors = F)
d4 <- as.data.frame(m4,stringsAsFactors = F)

# 1.등차수열 1,3,5,... 를 1 부터 30 까지 생성하여 x 에 저장하시오 .
x = seq(1,30,2)
x
# 2. ‘A’,’B’,’C’의 값을 10 번 반복하여 30 개의 원소를 갖는 문자열 벡터 y 를 생성하시오 .
y = rep(c('A','B','C'),time=10)
y

# 3. 0,1을 각각 15 번 씩 반복하여 길이 30 인 벡터 z 를 생성하고 이를 문자형으로 변환하여 z1 에 저장하시오 .
z = rep(0.1,time=15)
z1=as.character(z)
z1

# 4. 1번의 x 를 이용하여 6 x 5 의 행렬을 생성하고 xmat 변수에 저장 하시 오 . 행기준으로 채움 )
xmat= matrix(x,6,5)
xmat
# 5. 1,2,3의 결과를 각각 성분으로 갖는 리스트 생성하시오
lst = list(x,y,z1)
lst

# 6. x,y,z1을 변수로 갖는 데이터프레임을 생성하고 dat 로 저장하시오 . 문자열 요인화 방지
dat = data.frame(a=x,b=y,c=z1, stringsAsFactors = F)
dat

# 7. 6의 dat 중에서 첫번째와 두번째 변수를 선택하여 행렬로 변환하시오 .
h = as.matrix(dat[1:2])
h

# 8. 6의 dat 중에서 첫번째와 세번째 변수를 선택하여 행렬로 변환하시오 .

i= as.matrix(dat[-2])
i
# 9. 1의 x 벡터에서 10 보다 크고 20 보다 작은 원소의 합을 구하시오.
sum(x[x >10 & x<20])

# 10. 4의 xmat 에서 행의 합 , 열의 평균 , 열의 분산 값을 각각 계산하시오
apply(xmat,1,sum)
apply(xmat,2,mean)
apply(xmat,2,var)