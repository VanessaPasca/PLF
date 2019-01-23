powertwo(0,0).
powertwo(1,1).
powertwo(2,1).
powertwo(A,R):-
    M is mod(A,2),
    M =:= 1,
    R is 0.

powertwo(A,R):-
    M is mod(A,2),
    M =:= 0,
    D is div(A,2),
    powertwo(D,R).

% add o sa adauge doar dupa puteri a lui doi
add([],_,_,[]):-!.
add([H|T],V,K,R):-
    powertwo(K,Rez),
    Rez =:= 1,   %daca este putere a lui doi
    NewK is K+1,
    add(T,V,NewK,LR),
    R=[H,V|LR].   %adauga dupa H elementul V

add([H|T],V,K,R):-
    powertwo(K,Rez),
    Rez =:= 0,   %daca nu e putere a lui 2
    NewK is K+1,
    add(T,V,NewK,RR),
    R=[H|RR].    %nu se adauga la rezultat dupa H V, ci doar H
addv(L,V,R):-
    add(L,V,1,R).
