iris

str(iris)

colnames(iris)

lm(Sepal.Length ~ Petal.Width, data=iris)
z =lm(iris[,1]~iris[,4])
summary(z)

plot(iris[,1]~iris[,4])
abline(z)
