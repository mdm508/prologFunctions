/*
median(List,Median)
Note that List will always be a list with an odd number of distinct integers. 

?- median([7,4,2,8,1,3,6],M). 
M = 4 

?- median([1,2,3],2). 
true 

?- median([1,2,3],1). 
false
*/


%% Calculate the median given a list with
%% an odd number of distinct elements

median(List,MEDIAN):-
	[H|T] = List,
	calc_median(T,H,1,MEDIAN).

calc_median([],SUM,LENGTH,MEDIAN):-
	MEDIAN is div(SUM,LENGTH).
	
calc_median([H|T],SUM,LENGTH,MEDIAN):-
	NEWSUM    is SUM + H,
	NEWLENGTH is LENGTH + 1,
	calc_median(T,NEWSUM,NEWLENGTH,MEDIAN).

