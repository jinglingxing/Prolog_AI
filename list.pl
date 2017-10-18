%the max value in the list
accMax([H|T], A, Max):- H>A, accMax(T,H,Max).
accMax([H|T], A, Max):- H<=A,accMax(T,A,Max).
accMax([], A, A).
max(L,M):- l=[H|_],accMax(L,H,M).

%compute the sum of all elements in the list
somme([], 0).
somme([L|T], S) :- somme(T, Rest), S is L + Rest.

%find the n-th element of a list
nth(0,[H|_],H).
nth(N,[_|T],H):- N>0,N1 is N-1, nth(N1,T,H).

%write a method that zips two lists zip(L1,L2,R). example : zip([1,2,3],[a,b,c],R).
%gives R = [[1,a],[2,b],[3,c]]
zip([],[],[]).
zip([H1|L1],[H2|L2],[[H1,H2]|R]):- zip(L1,L2,R).

%write a method that enumerates all number from 0 to N in the list

enumerate(0,L).
enumerate(N,L):-  N1 is N-1, enumerate(N1,L1), L=[N|L1].

% write a method give change(Money,Price) that prints the change to do
% if we pay Price with Money. To print use the functions write()

give_change(Money,Price) :- Change is Money-Price, Ipart is floor(Change),
    N2 is div(Ipart, 2), N1 is mod(Ipart, 2), Fpart is floor((Change-Ipart)*100),
    N25 is div(Fpart, 25),
    N10 is div(Fpart-25*N25, 10), N05 is div(Fpart-25*N25-10*N10, 5),
    write('A rendre:'), nl, write(N05), write(' coin of 0.05'), nl,
    write(N10), write(' coin of 0.10'), nl,
    write(N25), write(' coin of 0.25'), nl,
    write(N1), write(' coin of 1'), nl,
    write(N2), write(' coin of 2').







