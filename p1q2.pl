/*
subsets(S,PS)

Note that the subsets need not be listed exactly in the order shown. 

?- subsets([1],[[1],[]]). 
true 

?- subsets([1],[[1],[2]]). 
false 

?- subsets([1,2],PS). 
PS = [[],[1],[2],[1,2]] 


IDEA
sort the list
define sublist 
check if X is sublist PS


ALT IDEA
define member
for each x in A, check if its a member in B
*/







