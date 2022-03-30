library(Hmisc)

#rcspline => Restricted Cubic Spline Design Matrix 

x_in <- seq(0,1,0.01) #step size
knots <- seq(0.05 ,0.95 ,length=5) #like linspace
include_x_in_output = TRUE
x <- rcspline.eval(x_in, knots=knots, inclx=include_x_in_output)
xm <- x 
#xm[xm > 0.0106] <- NA 

#This jsut zooms in ...
#x[,1] is just x_in (I think)
matplot(x[,1], xm, type="l", ylim=c(0,.01), xlab=expression(X), ylab= '' , lty=1)
matplot(x[,1], x, type="l", xlab=expression(X), ylab= '' , lty=1)