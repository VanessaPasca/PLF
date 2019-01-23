
create([],_,_,_,[]).
create([_|T],M,N,K,R):-  %daca e sub M pur si simplu incrementam K, nu adaugam nimic
    K < M,
    NewK is K+1,
    create(T,M,N,NewK,R).
create(_,_,N,K,R):-   %daca K ajunge sa depaseasca N, nu mai luam nimic, deci R = []
    K > N,
    R = [].

create([H|T],M,N,K,R):- %daca e intre M si N, incrementam, apelam, si vom adauga pe H la rezultat
    K >= M,
    K =< N,
    NewK is K+1,
    create(T,M,N,NewK,Re),
    R=[H|Re].

sublist(L,M,N,R):-
    create(L,M,N,1,R).
