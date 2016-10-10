jointProb <- matrix(c((.3*.2),(.6*.2),(.1*.2),(.6*.2),(.3*.2),(.1*.2),(.3*.6),(.1*.6),(.6*.6)),ncol=3,byrow=TRUE) #This line is used to create the data points that will be used in the table. This is done by using Equation 4.9 (p(r,c) = p(c|r)*p(r))
colnames(jointProb) <- c("Ice Cream","Fruit","French Fries") #The next two lines are used to create labels for the table.
rownames(jointProb) <- c("1st Graders","6th Graders","11th Graders")
jointProb <- as.table(jointProb) #jointProb is now defined as a table and then printed.
show(jointProb)   #As can be seen favorite food and grade level are not independent. This can be found by looking at the data and recognizing that p(x,y) does not equal p(x)*p(y) for all x and y. For instances p(11th graders, French Fries) = .36 and p(11th Graders) = .6 so p(French Fries) = .6. However is we look at p(6th Graders, French Fries) = .02 and p(6th Graders) = .2 we find that p(French Fries) = .1 and thus the two are not independent.
