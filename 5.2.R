Table5.2 <- matrix(c((99),(.05*(1-.001)*100000),(99 +.05*(1-.001)*100000),(1),((1-.05)*(1-.001)*100000),(1 +((1-.05)*(1-.001)*100000) ),(100),(99900),(100000)),ncol=3,byrow=TRUE) #This line is used to create the data points that will be used in the table. This is done by using Equation 4.9 (p(r,c) = p(c|r)*p(r))
colnames(Table5.2) <- c("Present","Not Present","Marginal (Test Results") #The next two lines are used to create labels for the table.
rownames(Table5.2) <- c("Postive","Negative","Marginal (Disease")
Table5.2 <- as.table(Table5.2)
show(Table5.2)
#When looking at the first row of the table, which gives the number of postive results, we can see it is roughly 100/5000 for disease present over total positives. When we compute the actual answer we find 99/5094 which is .019, the same as in Table 5.4.
#When completing the diagram, I did not reproduce the actual picture but will discuss the results here.
#We start with 10 million people. There should be 10,000 who have the disease next we want to multiply first by p(D = +|disease present) and then by p(D = - | disease present). This becomes 10,000 * .99 * .001 which equals 9.9 people.
#The next branch of the diagram is similar but here we start with those who don't have the disease, about 9,990,000 and then multiply by p(D = + | disease not present) and then p(D = - | disese not present). This comes out to 9,990,000 * .05 * .95 and this equals 474,525 people.
#The percent of people who have the disease and test positive first and then negative is 9.9/474,525 and this is about 2.1 x 10^-5. The answer from 5.1 was about 2 x 10^-7 so we are two orders of magnitude off.