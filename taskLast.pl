fibo(0,0):-!.
fibo(1,1):-!.
fibo(Trm,P):-
    P > 1,
    P1 is P-1
    ,P2 is P-2,
    fibo(Trm1, P1),
    fibo(Trm2, P2).
     Trm is Trm1+Trm2.


membership([X], [X]).
membership([X], []):- write('Empty list').

membership(X, [H|T]):-  membership(X,[T]).