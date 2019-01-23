addOnPos([], _, P, []):-P>0.
addOnPos(L, E, 0, [E|L]):-!.
addOnPos([H|T], E, P, [H|Tr]):-
	P > 0,
	Pm is P-1,
	addOnPos(T, E, Pm, Tr).
%addOnPos([], _, P, []):-P>0.
%ins([], _, P, []):-P>0.
%ins([], E, 0, [E]).
%ins(L, E, 0, [E|L]).
%ins([H|T], E, P, [H|Tr]):-
  %  Pn is P-1,
   % ins(T, E, Pn, Tr).
