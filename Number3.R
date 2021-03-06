y=c()
for (i in 1:100)
{
  x=i+2
  y=c(y,x)
}
y
l = list(1:10,-2:10,-9:-3,400:1000, 120:190)
mn=c()
for (i in 1:length(l))
{
  mn=c(mn,mean(l[[i]]))
}
mn
x=runif(100000,-1,1)
y=runif(100000,-1,1)
Pi=0
Nr=0
Ns=0
for (i in 1:100000)
{
  
  if ((x[i]^2+y[i]^2)>1)
  { 
    Ns=Ns+1
  }
  else
  {
    Nr=Nr+1
  }
}
Pi=4*Nr/(Ns+Nr)
Pi
pis=c()
for (i in seq(10,10000,10))
{ x=runif(i,-1,1)
y=runif(i,-1,1)
z=table(x^2+y^2<=1)
my_p=4*z[2]/i
pis=c(pis,my_p)
}
plot(pis,type="l")
hist(pis,nclas=100)
mean(pis)
l=list()
for (i in 1:length(iris[,1]))
{
  v=c(iris[i,1],sum(iris[,1])-iris[i,1],iris[i,2],sum(iris[,2])-iris[i,2])
  dim(v)=c(2,2)
  l2=list(v)
  l=c(l,l2)
}
l
apply(iris[,1:4],2,sum)
tapply(iris$Sepal.Length, iris$Species, sum)
x=c(2,8,6)
y=c(3,7,9)
plot(5:10)
plot(x,y)
plot(x,y, type="l")
plot(x,y, type="b")
plot(x,y,type="h")
plot(x,y,type="s", col=rgb(.90,.10,.10,.9))
plot(seq(-10,10,.01),sin(seq(-10,10,.01)), type="h")
plot(seq(-10,10,.01), sin(seq(-10,10,.01)), col=rgb(.90,.10,.10,.9), type="h", xlim=c(-20,20), ylim=c(-5,5))
plot(seq(-10,10,.01),sin(seq(-10,10,.01)), col=rgb(.90,.10,.10,.9), type="h", xlim=c(-20,20), ylim=c(-5,5),main="My first cos(x)",xlab="x",ylab="sin(x)")
plot(seq(-10,10,.01),sin(seq(-10,10,.01)), col=rgb(.90,.10,.10,.9), type="l", xlim=c(-20,20), ylim=c(-5,5),main="My first cos(x)",xlab="x",ylab="sin(x)",lwd=.4)
plot(seq(-10,10,.01),sin(seq(-10,10,.01)), col=rgb(.90,.10,.10,.9), type="l", xlim=c(-20,20), ylim=c(-5,5),main="My first cos(x)",xlab="x",ylab="sin(x)",lwd=4, lty=4)
plot(seq(-10,10,.01),sin(seq(-10,10,.01)), col=rgb(.90,.10,.10,.9), type="b", xlim=c(-20,20), ylim=c(-5,5),main="My first cos(x)",xlab="x",ylab="sin(x)",lwd=4, lty=4, pch=4)
####Линии
plot(seq(-10,10,.01),sin(seq(-10,10,.01)), type="l")
lines(seq(-10,10,.01),rep(c(0),2001), type="l", col="red")
x=(seq(-10,10,.01))
plot(x, (1-x^2)^.5, type="l",ylim=c(1,-1), xlim=c(-1,1))
lines(x, -((1-x^2)^.5))
lines(rep(c(0),401),seq(-2,2,.01))
lines(seq(-2,2,.01),rep(c(0),401))
#install.packages("ggplot2")
library(ggplot2)
str(mtcars)
ggplot(mtcars, aes(x = cyl, y = mpg)) +
  geom_point()
ggplot(mtcars, aes(x = factor(cyl), y = mpg)) +
  geom_point()
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point()
ggplot(mtcars, aes(x = wt, y = mpg, col = disp)) +
  geom_point()
ggplot(mtcars, aes(x = wt, y = mpg, size = disp)) +
  geom_point()
ggplot(diamonds, aes(x = carat, y = price)) + geom_point() + geom_smooth()
# The plot you created in the previous exercise
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point() +
  geom_smooth()
# Copy the above command but show only the smooth line
ggplot(diamonds, aes(x = carat, y = price)) +  geom_smooth()
# Copy the above command and assign the correct value to col in aes()
ggplot(diamonds, aes(x = carat, y = price, col=clarity)) +
  geom_smooth()
# Keep the color settings from previous command. Plot only the points with argument alpha.
ggplot(diamonds, aes(x = carat, y = price, col=clarity)) +
  geom_point(alpha = 0.4)
# Create the object containing the data and aes layers: dia_plot
dia_plot = ggplot(diamonds, aes(x = carat, y = price))
# Add a geom layer with + and geom_point()
dia_plot + geom_point()
# Add the same geom layer, but with aes() inside
dia_plot + geom_point(aes(col=clarity))
