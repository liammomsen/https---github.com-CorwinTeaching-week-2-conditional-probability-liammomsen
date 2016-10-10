print("p(x) = 6x(1-x)") #We are given this probability equation over the region of x from 0 to 1. We now want to integrate it.
integrand <- function(x) {6*x*(1-x)}
show(integrate(integrand, lower = 0, upper = 1)) #This is the actual integral of the function. As was hoped for it equals 1 over the region of x from 0 to 1, as Equation 4.3 said it would.
#If we inspect the graph we can see that the maximum value of p(x) occurs at x = .5 and is about 1.5. This is a situation in which the probability density is greater than one, but the probabilty of the entire region is 1. 