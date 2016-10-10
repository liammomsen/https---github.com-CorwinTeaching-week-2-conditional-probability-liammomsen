Euler40 = function(n = 6){                          #We want to create a function that finds the products of certain digits of a given irrational decimal fraction.
  list <- seq(1,10^n,1);                            #This first line creates a sequence of numbers from 1 to an inputted value, in our case we want n=6 (the largest digit of the decimal).
  decimal <- paste(list,collapse = '');             #Now we want to take the sequence and convert it into single number, now the decimal is recreated.
  digits <- unlist(strsplit(decimal, split = ""));  #Here we want to split the number created into a list of individual digits so we can examine the one we want.
  i <- 0;                                           #The next two lines define two values, i will be used as a counter and x will be an intial value we will use for our product.
  x <- 1;
  for (i in (0:n)){                                 #This is a for loop that both converts the digits we want into numbers and then multiplies our number x by this number. 
    x <- x*as.numeric(digits[10^i]);                #The loop will go for the specified amount of digits. 
    i <- i+1;
  }
  print(x)                                          #The answer is printed.
}