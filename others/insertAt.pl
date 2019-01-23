%ins(L: List, E: number, Pos: number, Rez: List)
%L - the initial list of elements
%E - the number to insert
%Pos- the position to insert at
%Rez - the resulted list
%Flow model: (i,o)

ins([],_,Pos,[]):-Pos>0.
ins(L, E,0,[E|L]):-!.
ins([H|T], E, Pos, [H|Rez]):-
    Pos>0,
    Pos1 is Pos-1,
    ins(T, E,Pos1, Rez).
