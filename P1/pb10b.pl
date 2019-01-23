asum([],_,0).
asum([H|T],K,R):-
    M is mod(K,2),
    M =:= 0,
    NewK is K+1,
    asum(T,NewK,Re),
    R is H+Re.  %daca e pozitie para incrementam doar K si adaugam H

asum([H|T],K,R):-
    M is mod(K,2),
    M =:= 1,
    NewH is H*(-1),
    NewK is K+1,
    asum(T,NewK,Re),
    R is NewH+Re.   %daca e pozitie impara facem NewH care e varianta negativa a lui H pe care o adunam la suma

solve(L,R):-
    asum(L,0,R).
