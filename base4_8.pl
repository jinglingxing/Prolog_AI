accMax([H|T], A, Max) :- H > A, accMax(T,H,Max).
accMax([H|T], A, Max) :- H =< A, accMax(T,A,Max).
accMax([], A, A).
max(L, M) :-  L=[H|_], accMax(L, H, M).
%compute the sum of all elements in the list(two methods)
somme1([], 0).
somme1([L|T], S) :- somme(T, Rest), S is L + Rest.
somme(L, S) :- L=[H|T], somme(T, S1), S is S1+H.
somme([], S) :- S is 0.
%find the n-th element of a list(two methods)

nth1(0,[H|_],H).
nth1(N,[_|T],H):- N>0,N1 is N-1, nth(N1,T,H).

nth(N, L, R) :- L=[H|T], N1 is N-1, nth(N1, T, R).
nth(1, L, R) :- L=[H|_], R is H.

%write a method that zips two lists zip(L1,L2,R). example : zip([1,2,3],[a,b,c],R)gives R = [[1,a],[2,b],[3,c]]
zip(L1, L2, R) :- L1=[H1|T1], L2=[H2|T2], zip(T1,T2,R1), R=[[H1,H2]|R1].
zip(L1, L2, R) :- L1=[H1], L2=[H2], R=[[H1,H2]].
zip1([],[],[]).
zip1([H1|L1],[H2|L2],[[H1,H2]|R]):- zip(L1,L2,R).

enumerate(0,L) :- L=[0].
enumerate(N,L) :- N1 is N-1, enumerate(N1, L1), L=[N|L1].

give_change(Money,Price) :- Change is Money-Price, Ipart is floor(Change),
    N2 is div(Ipart, 2), N1 is mod(Ipart, 2), Fpart is floor((Change-Ipart)*100),
    N25 is div(Fpart, 25),
    N10 is div(Fpart-25*N25, 10), N05 is div(Fpart-25*N25-10*N10, 5),
    write('A rendre:'), nl, write(N05), write(' coin of 0.05'), nl,
    write(N10), write(' coin of 0.10'), nl,
    write(N25), write(' coin of 0.25'), nl,
    write(N1), write(' coin of 1'), nl,
    write(N2), write(' coin of 2').
