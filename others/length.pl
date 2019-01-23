len([],0).
len([_|Tail],Count):-
        len(Tail,Prev),
        Count is Prev + 1.
