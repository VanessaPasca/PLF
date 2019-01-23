%insert(L:list,E:elem,R:list)
insert([H|T],E,R):-
    R=[E,H|T].
insert([H|T],E,R):-
    insert(T,E,L),
    R=[H|L].
insert([],E,[E]).

%perm(L:list,R:list)

perm([],[]).
perm([H|T],R):-
    perm(T,RT),
    insert(RT,H,Rez),
    R=Rez.

%combinari(L:list,K:integer,R:list)

combinari(_,0,[]).
combinari([H|T],K,R):-
    NewK is K-1,
    K>0,
    combinari(T,NewK,Rz),
    R=[H|Rz].

combinari([H|T],K,R):-
    combinari(T,K,R).

%aranjamente(L:list,K:int,R:list)
aranjamente([],_,[]).
aranjamente(L,K,R):-
    combinari(L,K,Rz),
    perm(Rz,R).

%suma(L:list,C:int,R:int)
%flow: i,i,o
suma([],C,C).
suma([H|T],C,R):-
    NewC is C+H,
    suma(T,NewC,R).

%prod(L:list,P:int,R:int)
%flow: i,i,o

prod([],P,P).
prod([H|T],P,R):-
    NewP is P*H,
    prod(T,NewP,R).

%onesol(L:list,K:int,S:int,P:int,R)
%i,i,i,i,o
onesol(L,K,S,P,R):-
    aranjamente(L,K,R),
    suma(R,0,S),
    prod(R,1,P).

allsol(L,K,S,P,R):-
    findall(R1,onesol(L,K,S,P,R1),R).

