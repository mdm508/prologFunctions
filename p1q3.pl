/*
mergesort(US,S)

?- mergesort([3,4,5,1,2,6],[1,2,3,4,5,6]).

true

?- mergesort([3,4,5,1,2,6],[1,2,3,4,5]).

false

?- mergesort([3,4,5,1,2,6],T).

T = [1, 2, 3, 4, 5, 6]

mergesort(LIST,OUTLIST):-
*/

%%Funcitons related to splitting
append([],LISTB,LISTB).
append([H|T],LISTB,[H|LISTC]):-
    append(T,LISTB,LISTC).
split(LIST,L1,L2):-
	length(LIST,LENGTH),
	M is div(LENGTH,2),
	append(L1,L2,LIST),
	length(L1,L1LENGTH),
	(L1LENGTH =:= M).

%%functions related to merging
merge(A,[],A).
merge([],B,B).
merge([A|TA],[B|TB],[A|MERGED]) :-
	A =< B,
	merge(TA,[B|TB],MERGED).
merge([A|TA],[B|TB],[B|MERGED]) :-
	B < A,
	merge([A|TA],TB,MERGED).


mergesort([],[]).
mergesort([X],[X]).
mergesort(LIST,OLIST):-
	split(LIST,L1,L2),
	mergesort(L1,OLIST1),
	mergesort(L2,OLIST2),
	merge(OLIST1,OLIST2,OLIST),
	!.
