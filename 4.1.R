show( HairEyeColor ) # Show data, this line replicates the data for hair and eye color for both men and women.
EyeHairFreq = apply( HairEyeColor, c("Eye","Hair"), sum ) # Sum across sex. This is used to sum the total values, it combines the tables for men and women. 
EyeHairProp = EyeHairFreq / sum( EyeHairFreq )  # joint proportions, Table 4.1. Here the values of the original tables are combined and then divided by the total number of entries to find the probablities for each combination.
show( round( EyeHairProp , 2 ) )  #The previous table is now produced.
HairFreq = apply( HairEyeColor , c("Hair") , sum ) # Sum across sex and eye. In this case the same tactic is used as before, however now the hair colors are summed to find the percent of data that has each hair color.
HairProp = HairFreq / sum( HairFreq ) # marginal proportions, Table 4.1
show( round( HairProp , 2 ) )
EyeFreq = apply( HairEyeColor , c("Eye") , sum ) # Sum across sex and eye. Here it is the eye color we want to see, this will produce the probabilities of having each eye color.
EyeProp = EyeFreq / sum( EyeFreq ) # marginal proportions, Table 4.1
show( round( EyeProp , 2 ) )
show(round(EyeHairProp["Blue",] / EyeProp["Blue"],2)) # conditional prob, Table 4.2. This command is used to show the probabilites of being each hair color when a person has blue eyes. This is done by taking the probabilites for each hair color and blue eye combination and then dividing by the percent of the population who has blue eyes to normalize the numbers.
show(round(EyeHairProp["Brown",] / EyeProp["Brown"],2)) #These next two lines are the cases that were asked for in the problem. The first is the probabilites of having each hair color when having brown eyes, and the second is the probabilites of having each eye color with brown hair.
show(round(EyeHairProp[,"Brown"] / HairProp["Brown"], 2))