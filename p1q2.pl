member(X,[X|_]).
member(X,[_|T]):-
	member(X,T),
	!.

append([],LISTB,LISTB).
append([H|T],LISTB,[H|LISTC]):-
    append(T,LISTB,LISTC).

marry(X,T,MLIST):-
	go_marry(X,T,T,MLIST).
	
go_marry(_,[],LISTB,LISTB).
go_marry(X,[H|T],LISTB,LISTC):-
	%LISTC = [H|T_LISTC],
	append([X],H,JOINED),
	LISTC = [JOINED|T_LISTC],
	go_marry(X,T,LISTB,T_LISTC).
	
subsets([],[[]]).
subsets([H|T],PS):-
	subsets(T,TS),
	marry(H,TS,PS),
	!.
	

	

	
	
	

	
	







