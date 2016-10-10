# Graph of normal probability density function, with comb of intervals. I found this program online and altered it to what the problem asked for. In this it graphs the equation we are given for x between 0 and 1 and then produces an estimate of the integral.
xlow  = 0 # Specify low end of x-axis.
xhigh = 1 # Specify high end of x-axis.
dx = 0.02                 # Specify interval width on x-axis
# Specify comb points along the x axis:
x = seq( from = xlow , to = xhigh , by = dx )
# Compute y values, i.e., probability density at each value of x:
y = 6*x*(1-x)
# Plot the function. "plot" draws the intervals. "lines" draws the bell curve.
plot( x , y , type="h" , lwd=1 , cex.axis=1.5
      , xlab="x" , ylab="p(x)" , cex.lab=1.5
      , main="Normal Probability Density" , cex.main=1.5 )
lines( x , y )
# Approximate the integral as the sum of width * height for each interval.
area = sum( dx * y )
# Display info in the graph.
text( .8 , .9*max(y) , bquote( paste(Delta , "x = " ,.(dx)) )
      , adj=c(0,.5) )
text( .7 , .8*max(y) ,
      bquote(
        paste( sum(,x,) , " " , Delta , "x p(x) = " , .(signif(area,3)) )
      ) , adj=c(0,.5) )
# To save graphs, please see update at
# http://doingbayesiandataanalysis.blogspot.com/2013/01/uniform-r-code-for-opening-saving.html