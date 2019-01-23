




transform([H|T],[H1|T1],Step,tree(Name,Lista),TT,TT1):-
    Step=0,
    Name=H,
    Lista=[],
    TT=T,
    T1=TT1.

transform([H,HH|T],[H1,T1],Step,tree(Name,Lista),TT,TT1):-
    Step>1,
    transform(T,T1,H1,tree(HH,Listap),TTt,TTt1),
    Step1 is Step-1,
    transform(TTt,TTt1,Step1,tree(H,Lista1),TT,TT1),
    Lista=[tree(HH,Listap)|Lista1],
    Name=H.


