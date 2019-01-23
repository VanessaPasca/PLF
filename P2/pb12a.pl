%lista cu divizori

divisors(0,_,[]).
divisors(_,1,[]):-!.
divisors(_,0,[]).

divisors(A,C,R):-
    M is mod(A,C),
    M=0,
    NewC is C-1,
    divisors(A,NewC,RT),
    R=[C|RT].

divisors(A,C,R):-
    M is mod(A,C),
    M\=0,
    NewC is C-1,
    divisors(A,NewC,R).

getdivisors(A,R):-
    divisors(A,A-1,R).


%adauga dupa fiecare nr divizorii lui


% adauga frumos: daca ai de adaugat lista [1,2] la lista [3,4], sa nu o
% faca [[1,2],3,4], ci [1,2,3,4]
adaugafrumos([],L,L).
adaugafrumos([H|T],L,R):-
    adaugafrumos(T,L,RT),
    R=[H|RT].
adaugadiv([],[]).
adaugadiv([H|T],R):-
    adaugadiv(T,RT),
    HM is H-1,
    divisors(H,HM,RR),
    adaugafrumos(RR,RT,Rez),
    R=[H|Rez].
