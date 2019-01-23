insert([H|T],Pos,Elem,Acc,R):-
    Pos=\=0,
    Pos1 is Pos-1,
    Acc1=[Acc|H],
    insert(T,Pos1,Elem,Acc1,R).

insert([],Pos,Elem,Acc,R):-Pos>2,
    R=Acc.
insert([],1,Elem,Acc,[Elem|Acc]).
insert([H|T],0,Elem,Acc,R):-
    Acc1=[Elem|H],
    R=Acc1.
